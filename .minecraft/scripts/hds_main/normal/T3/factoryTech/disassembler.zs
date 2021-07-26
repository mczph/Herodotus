#packmode normal
#suppress warnings
#priority -1

import mods.factorytech.Disassembler;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

for entity in game.entities{
    Disassembler.addRecipe(entity, [<contenttweaker:rhythmic_seed>]);
}
}
