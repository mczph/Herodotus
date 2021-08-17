import os

version = os.environ["VERSION"] + "." + os.environ["GITHUB_RUN_NUMBER"]

f = open(".minecraft/config/fancymenu/config.txt", "r", encoding="utf-8")
f_list = f.readlines()
for i, line in enumerate(f_list):
    if (line.lstrip().startswith("S:customwindowtitle")):
        f_list[i] = "S:customwindowtitle = 'Herodotus build " + version + "';\n"
f.close()

f = open(".minecraft/config/fancymenu/config.txt", "w", encoding="utf-8")
f.writelines(f_list)
f.close()
