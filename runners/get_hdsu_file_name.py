import os

for file in os.listdir(".minecraft/mods"):
    if (file.startswith("herodotusutils")):
        os.system(r"echo ::set-output name=hdsu_path::" + file)
        break
