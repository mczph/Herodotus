import os
import json
import re

ftbquests_path = ".minecraft/config/ftbquests"
zh_cn_path = ".minecraft/resources/herodotus/lang/zh_cn.lang"
en_us_path = ".minecraft/resources/herodotus/lang/en_us.lang"
should_replace_key = [
    "title",
    "description"
]
cn_context_dict = {}

def check_file(path):
    for file in os.listdir(path):
        file_path = path + "/" + file
        if (os.path.isdir(file_path)):
            check_file(file_path)
        else:
            read(file_path, file)

def read(full_path, file_name):
    f = open(full_path, "+", encoding='utf-8')
    for i, line in enumerate(f.readlines()):
        for key in should_replace_key:
            if (key in line):
                context = line.split("\"")[1]
                print(context)


check_file(ftbquests_path)