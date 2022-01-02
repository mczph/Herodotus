#packmode normal
#priority 1000

import scripts.hds_main.utils.modloader.isInvalid;
import loottweaker.LootTweaker;
//import loottweaker.vanilla.loot.LootTable;
//import loottweaker.vanilla.loot.LootPool;
import crafttweaker.item.IItemStack;
import mods.ltt.LootTable;
if(!isInvalid){

//Remove
val tempRemoveTables as string[] = [
    "minecraft:chests/abandoned_mineshaft",
    "minecraft:chests/desert_pyramid",
    "minecraft:chests/end_city_treasure",
    "minecraft:chests/igloo_chest",
    "minecraft:chests/jungle_temple",
    "minecraft:chests/jungle_temple_dispenser",
    "minecraft:chests/nether_bridge",
    "minecraft:chests/simple_dungeon",
    "minecraft:chests/spawn_bonus_chest",
    "minecraft:chests/stronghold_corridor",
    "minecraft:chests/stronghold_crossing",
    "minecraft:chests/stronghold_library",
    "minecraft:chests/village_blacksmith",
    "minecraft:chests/woodland_mansion"
];

for table in tempRemoveTables {
    LootTable.removeTable(table);
}

val removeTables as string[] = []; //TODO LTMORE

val removeItems as IItemStack[] = [
    <botania:lexicon>,
    <minecraft:iron_ore>,
    <minecraft:obsidian>,
    <minecraft:iron_helmet>,
    <minecraft:iron_chestplate>,
    <minecraft:iron_leggings>,
    <minecraft:iron_boots>,
    <minecraft:iron_shovel>,
    <minecraft:iron_pickaxe>,
    <minecraft:iron_axe>,
    <minecraft:iron_sword>,
    <minecraft:iron_hoe>,
    <ore:gemQuartzBlack>.firstItem,
    <botania:blacklotus>,
    <tconevo:tool_sceptre>
];

for table in removeTables {
    for item in removeItems{
        LootTweaker.getTable(table).getPool("main").removeEntry(item.name);
    }
}

/*
val removeNames as string[] = [
    "actuallyadditions",
    "growthcraft",
    "tconevo",
    "biomesoplenty",
    "pneumaticcraft",
    "enderio"
];


for name in removeNames {
    LootTable.removeModTable(name);
}

for item in removeItems{
    LootTable.removeGlobalItem(item.name);
}
*/

//Add
}
