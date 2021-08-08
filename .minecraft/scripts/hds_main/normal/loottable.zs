#packmode normal
#priority 1000

import scripts.hds_main.utils.modloader.isInvalid;
import mods.ltt.LootTable;
import crafttweaker.item.IItemStack;

if(!isInvalid){

//Remove
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
    <botania:blacklotus>
];

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


//Add
}
