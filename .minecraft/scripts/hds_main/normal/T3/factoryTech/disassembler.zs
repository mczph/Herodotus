#packmode normal
#suppress warnings
#priority -1

import mods.factorytech.Disassembler;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

for entity in game.entities{
    Disassembler.add(entity, [<contenttweaker:rhythmic_seed>]);
}
Disassembler.add(<entity:srparasites:movingflesh>, [<contenttweaker:biological_resources>]);
}
