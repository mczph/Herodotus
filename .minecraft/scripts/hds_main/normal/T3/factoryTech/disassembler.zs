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

Disassembler.add(<entity:srparasites:pri_longarms>, [<contenttweaker:biological_resources> * 2]);
Disassembler.add(<entity:srparasites:pri_manducater>, [<contenttweaker:biological_resources> * 2]);
Disassembler.add(<entity:srparasites:pri_reeker>, [<contenttweaker:biological_resources> * 2, <contenttweaker:broken_ootheca>]);
Disassembler.add(<entity:srparasites:pri_yelloweye>, [<contenttweaker:biological_resources> * 2, <contenttweaker:broken_ootheca>]);
Disassembler.add(<entity:srparasites:pri_summoner>, [<contenttweaker:biological_resources> * 2]);
Disassembler.add(<entity:srparasites:pri_arachnida>, [<contenttweaker:biological_resources> * 2, <contenttweaker:broken_ootheca>]);
Disassembler.add(<entity:srparasites:pri_bolster>, [<contenttweaker:biological_resources> * 2, <contenttweaker:broken_ootheca> * 2]);
}
