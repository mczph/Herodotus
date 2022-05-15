import json

id_f = open("caches/hdsu_file_id.txt")
id = int(id_f.readline())
id_f.close()
f = open("manifest.json", "r", encoding="utf-8")
content = json.load(f)
content["files"].append({"projectID": 574421, "fileID": id, "required": True})
f.close()
f = open("manifest.json", "w", encoding="utf-8")
json.dump(content, f)
f.close()
