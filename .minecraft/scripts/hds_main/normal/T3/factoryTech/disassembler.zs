#packmode normal
#suppress warnings
#priority -1

import mods.factorytech.Disassembler;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

for name in game.entities{
    Disassembler.addRecipe(name, <contenttweaker:rhythmic_seed>);
}
}
