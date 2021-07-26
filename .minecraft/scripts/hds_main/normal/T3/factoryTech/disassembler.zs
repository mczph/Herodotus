#packmode normal
#priority -1

import mods.factorytech.Disassembler;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_lib.crtlib.allVanillaMobClassNames;

if(!isInvalid){

for names in allVanillaMobClassNames{
    Disassembler.addRecipe("net.minecraft.entity." ~ names, <contenttweaker:rhythmic_seed>);
}
}
