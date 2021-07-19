#packmode normal
#priority 1000

import scripts.hds_main.utils.modloader.isInvalid;
import mods.ltt.LootTable;

if(!isInvalid){

//Remove
LootTable.removeGlobalItem("botania:lexicon");
LootTable.removeGlobalItem("minecraft:iron_ore");

LootTable.removeModItem("actuallyadditions");
LootTable.removeModItem("growthcraft");
LootTable.removeModTable("tconevo");
LootTable.removeModTable("biomesoplenty");
LootTable.removeModTable("pneumaticcraft");
LootTable.removeModTable("enderio");


//Add
}
