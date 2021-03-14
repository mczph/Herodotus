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
en_context_dict = {}

def check_dir(path):
    for file in os.listdir(path):
        file_path = path + "/" + file
        if (os.path.isdir(file_path)):
            check_dir(file_path)
        else:
            read_snbt(file_path, file)

def read_snbt(full_path, file_name):
    f = open(full_path, "r+", encoding='utf-8')
    f_list = f.readlines()
    file_name = file_name.split(".snbt")[0]
    f.close()
    for i, line in enumerate(f_list):
        for key in should_replace_key:
            if (key in line):
                context = line.split("\"")
                lang_key = "herodotus.quests.%s.%s" % (file_name, key)
                new_context = context[0] + "\"{" + lang_key + "}\"" + context[2]
                f_list[i] = new_context
                cn_context_dict[lang_key] = context[1]
                en_context_dict[lang_key] = context[1]
    f = open(full_path, "w+", encoding="utf-8")
    f.writelines(f_list)
    f.close()

def write_lang(path, context_dict):
    new_file(path)
    to_append_entries = []
    f = open(path, "r+", encoding='utf-8')
    f_list = f.readlines()
    f.close()
    f_list_copy = f_list.copy()
    for i, line in enumerate(f_list):
        if (line.startswith("#")):
            continue
        key = line.split("=")[0]
        if (key in context_dict):
            f_list_copy[i] = context_dict.pop(key)
    for key, value in context_dict.items():
        to_append_entries.append(key + "=" + value)
    f = open(path, "w+", encoding="utf-8")
    f.writelines(f_list_copy)
    for entry in to_append_entries:
        f.write(entry + "\n")
    f.close()

def new_file(path):
    f = open(path, "w", encoding="utf-8")
    f.close()

check_dir(ftbquests_path)
write_lang(zh_cn_path, cn_context_dict)
write_lang(en_us_path, en_context_dict)