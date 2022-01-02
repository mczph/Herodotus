import os

version_number = os.environ["GITHUB_RUN_NUMBER"]
version_name = os.environ["VERSION"]
version = version_name + "." + version_number

f = open(".minecraft/config/fancymenu/config.txt", "r", encoding="utf-8")
f_list = f.readlines()
for i, line in enumerate(f_list):
    if (line.lstrip().startswith("S:customwindowtitle")):
        f_list[i] = "S:customwindowtitle = 'Herodotus build " + version + "';\n"
f.close()

f = open(".minecraft/config/fancymenu/config.txt", "w", encoding="utf-8")
f.writelines(f_list)
f.close()

f = open(".minecraft/config/versioner.cfg", "r", encoding="utf-8")
f_list = f.readlines()
for i, line in enumerate(f_list):
    if (line.lstrip().startswith("I:versionCode")):
        f_list[i] = "        I:versionCode=" + version_number + "\n"
    if (line.lstrip().startswith("S:versionName")):
        f_list[i] = "        S:versionName=" + version_name + "\n"
f.close()

f = open(".minecraft/config/versioner.cfg", "w", encoding="utf-8")
f.writelines(f_list)
f.close()

f = open("runners/server/start.bat", "r", encoding="utf-8")
f_list = f.readlines()
for i, line in enumerate(f_list):
    if (line.lstrip().startswith("echo Starting Herodotus ")):
        f_list[i] = "echo Starting Herodotus build " + version + " server...\n"
    if (line.lstrip().startswith("title \"Herodotus\"")):
        f_list[i] = "title \"Herodotus build " + version + " Server\"\n"
f.close()

f = open("runners/server/start.bat", "w", encoding="utf-8")
f.writelines(f_list)
f.close()

f = open("runners/server/start.sh", "r", encoding="utf-8")
f_list = f.readlines()
for i, line in enumerate(f_list):
    if (line.lstrip().startswith("echo \"Starting Herodotus ")):
        f_list[i] = "echo \"Starting Herodotus build " + version + " server...\"\n"
f.close()

f = open("runners/server/start.sh", "w", encoding="utf-8")
f.writelines(f_list)
f.close()
