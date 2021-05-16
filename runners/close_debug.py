f = open(".minecraft/scripts/hds_main/utils/debug.zs", "w", encoding="utf-8")

content = [
    "#priority 2147483647\n", "\n", "global debug as bool = false;\n"
]

f.writelines(content)
f.close()
