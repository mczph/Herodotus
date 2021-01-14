#priority 1145141

static isInvalid as bool = false;
static invalidMods as string[] = [
    "torcherino",
    "xijun",
    "calculator",
    "bacteria",
    "decomp_table",
    "deconstrcution_table",
    "decon_table",
    "decontable",
    "decon",
    "uncraftingtable",
    "cyclic",
    "deconstruction",
    "grimpack",
    "avaritia",
    "xray",
    "oreping",
    "reinforcedtools",
    "scenter",
    "extrabotany",
    "oresniffer",
    "eplus",
    "stm",
    "ISM"
];

for i in invalidMods{
    if(loadedMods in i){
        isInvalid = true;
        break;
    }
}

//calling
//import scripts.hds_main.utils.modloader.isInvalid;
if(!isInvalid){
    print("The check for invalid mods has been completed, and all scripts will now be loaded.");
}