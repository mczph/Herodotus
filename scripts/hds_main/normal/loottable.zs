#packmode normal
#priority 1000

import scripts.hds_main.utils.modloader.isInvalid;
import mods.ltt.LootTable;

if(!isInvalid){

//Remove
LootTable.removeGlobalItem("minecraft:obsidian");
LootTable.removeGlobalItem("botania:lexicon");

LootTable.removeModItem("actuallyadditions");
LootTable.removeModItem("growthcraft");

LootTable.removeModTable("biomesoplenty");
LootTable.removeModTable("pneumaticcraft");
LootTable.removeModTable("enderio");


//Add
}