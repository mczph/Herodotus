import os

version = os.environ["VERSION"] + "." + os.environ["GITHUB_RUN_NUMBER"]

f = open(".minecraft/config/itlt.cfg", "r", encoding="utf-8")
f_list = f.readlines()
for i, line in enumerate(f_list):
    if (line.lstrip().startswith("S:windowDisplayTitle")):
        f_list[i] = "    S:windowDisplayTitle=Herodotus " + version
f.close()

f = open(".minecraft/config/itlt.cfg", "w", encoding="utf-8")
f.writelines(f_list)
f.close()
