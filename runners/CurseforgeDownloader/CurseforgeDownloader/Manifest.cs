using System.Text.Json.Serialization;

namespace CurseforgeDownloader;

/// <summary>
/// 
/// </summary>
public class Manifest
{
    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("minecraft")]
    public Minecraft? Minecraft { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("manifestType")]
    public string? ManifestType { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("manifestVersion")]
    public long ManifestVersion { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("name")]
    public string? Name { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("version")]
    public string? Version { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("author")]
    public string? Author { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("authors")]
    public string? Authors { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("files")]
    public List<File>? Files { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("overrides")]
    public string? Overrides { get; set; }
}

/// <summary>
/// 
/// </summary>
public class File
{
    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("projectID")]
    public long ProjectId { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("fileID")]
    public long FileId { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("required")]
    public bool FileRequired { get; set; }
}

/// <summary>
/// 
/// </summary>
public class Minecraft
{
    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("version")]
    public string? Version { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("modLoaders")]
    public List<ModLoader>? ModLoaders { get; set; }
}

/// <summary>
/// 
/// </summary>
public class ModLoader
{
    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("id")]
    public string? Id { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [JsonPropertyName("primary")]
    public bool Primary { get; set; }
}