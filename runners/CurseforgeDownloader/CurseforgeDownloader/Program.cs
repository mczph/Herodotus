using System.Net.Http.Headers;
using System.Text.Json;
using System.Text.Json.Nodes;

using CurseforgeDownloader;

using Serilog;

using File = System.IO.File;

/// <summary>
/// 
/// </summary>
public class Program
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="blacklist"></param>
    /// <param name="apiKey"></param>
    /// <param name="modFolderPath"></param>
    /// <param name="threadCount"></param>
    /// <param name="blackList"></param>
    /// <returns></returns>
    public static async Task Main(string? blacklist, string? apiKey, string? modFolderPath = null, int threadCount = 8, string? blackList = null)
    {
        Log.Logger = new LoggerConfiguration()
            .Enrich.FromLogContext()
            .MinimumLevel.Information()
            .WriteTo.Console()
            .CreateLogger();

        if (apiKey is null)
        {
            Log.Logger.Error($"{nameof(apiKey)} cannot be null!");
            return;
        }
        var regex = (blacklist ?? "").Split('-');
        var black = regex.Select(long.Parse).ToArray();
        modFolderPath ??= "./";
        Log.Logger.Information("Set mods folder: {0}", Path.GetFullPath(modFolderPath));
        var d = new Download();
        await d.DownloadAsync(apiKey, Path.GetFullPath(modFolderPath), threadCount, black);
    }
}

/// <summary>
/// 
/// </summary>
public class Download
{
    /// <summary>
    /// 
    /// </summary>
    public HttpClient HttpClient { get; set; } = new();

    /// <summary>
    /// 
    /// </summary>
    /// <param name="apiKey"></param>
    private void InitHeader(string apiKey)
    {
        HttpClient.DefaultRequestHeaders.Add("x-api-key", apiKey);
        HttpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        HttpClient.BaseAddress = new Uri("https://api.curseforge.com");
        //HttpClient.DefaultRequestHeaders.Add("Content-Type", "application/json");
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="apiKey"></param>
    /// <param name="folder"></param>
    /// <param name="thread"></param>
    /// <param name="blackList"></param>
    public async Task DownloadAsync(string apiKey, string folder, int thread, long[] blackList)
    {
        InitHeader(apiKey);

        var manifest = JsonSerializer.Deserialize<Manifest>(await File.ReadAllTextAsync("./manifest.json"));
        var files = manifest?.Files?.Select(_ => new { _.FileId, _.ProjectId });
        var sem = new SemaphoreSlim(thread);
        var tasks = files!.Select(async mod =>
        {
            if (blackList.Contains(mod.ProjectId))
            {
                return;
            }
            await sem.WaitAsync();
            try
            {
                var name = JsonNode.Parse(await HttpClient.GetStringAsync($"/v1/mods/{mod.ProjectId}"))!["data"]!["name"];
                var downloadUrl = JsonNode.Parse(
                    await HttpClient.GetStringAsync($"/v1/mods/{mod.ProjectId}/files/{mod.FileId}/download-url"))![
                    "data"];
                Log.Logger.Information("Download {0}...", name!.GetValue<string>());
                await File.WriteAllBytesAsync(Path.Combine(folder, Path.GetFileName(downloadUrl!.GetValue<string>())), await HttpClient.GetByteArrayAsync(downloadUrl.GetValue<string>()));
                Thread.Sleep(1000);
            }
            catch (Exception e)
            {
                Log.Logger.Error(e.Message, e);
            }
            finally
            {
                sem.Release(1);
            }
        }).ToArray();

        Task.WaitAll(tasks);
    }
}
