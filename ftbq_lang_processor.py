import os

ftbquests_path = ".minecraft/config/ftbquests"
zh_cn_path = ".minecraft/resources/herodotus/lang/zh_cn.lang"
en_us_path = ".minecraft/resources/herodotus/lang/en_us.lang"
should_replace_key = [
    "title",
    "description"
]
context_dict = {}

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
    if (file_name == "chapter"):
        file_name = full_path.split("/")[-2]
    for i, line in enumerate(f_list):
        for key in should_replace_key:
            if (line.lstrip().startswith(key)):
                head, context, tail = line.split("\"")
                if not(context.startswith("{") and context.endswith("}")):
                    lang_key = "herodotus.quests.%s.%s" % (file_name, key)
                    new_context = head + "\"{" + lang_key + "}\"" + tail
                    f_list[i] = new_context
                    context_dict[lang_key] = context
    f = open(full_path, "w+", encoding="utf-8")
    f.writelines(f_list)
    f.close()

def write_lang(path):
    copy = context_dict.copy()
    to_append_entries = []
    f = open(path, "r+", encoding='utf-8')
    f_list = f.readlines()
    f.close()
    f_list_copy = f_list.copy()
    for i, line in enumerate(f_list):
        if (line.startswith("#")):
            continue
        key = line.split("=")[0]
        if (key in copy):
            f_list_copy[i] = key + "=" + copy.pop(key)
    for key, value in copy.items():
        to_append_entries.append(key + "=" + value)
    f = open(path, "w+", encoding="utf-8")
    f.writelines(f_list_copy)
    if (len(f_list[-1]) == 0):
        f.write("\n")
    for entry in to_append_entries:
        f.write(entry + "\n")
    f.close()

check_dir(ftbquests_path)
write_lang(zh_cn_path)
write_lang(en_us_path)