#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

//something that recipeutils can't do or just remove
val removeByOutput as IItemStack[] = [
    <tconstruct:tooltables:1>,
    <tconstruct:tooltables:2>,
    <tconstruct:tooltables:3>,
    <tconstruct:tooltables:4>,
    <tconstruct:tooltables:5>,
    <tconstruct:casting>,
    <tconstruct:casting:1>,
    <pyrotech:faucet_brick>,
    <prodigytech:solid_fuel_aeroheater>,
    <prodigytech:energion_aeroheater>,
    <prodigytech:rotary_grinder>,
    <prodigytech:heat_sawmill>,
    <prodigytech:magmatic_aeroheater>,
    <prodigytech:magnetic_reassembler>,
    <prodigytech:atomic_reshaper>,
    <prodigytech:primordialis_reactor>,
    <prodigytech:solderer>,
    <prodigytech:ferramic_gear>,
    <astralsorcery:itemjournal>,
    <advancedrocketry:platepress>,
    <prodigytech:energion_dust>,
    <pyrotech:material:9>,
    <botania:altar>,
    <minecraft:bucket>,
    <minecraft:cauldron>,
    <minecraft:chest>,
    <actuallyadditions:block_giant_chest>,
    <actuallyadditions:block_giant_chest_medium>,
    <actuallyadditions:block_giant_chest_large>
];

val removeByRecipeName as string[] = [
    "minecraft:crafting_table",
    "minecraft:coal_block",
    "minecraft:dark_oak_planks",
    "minecraft:oak_planks",
    "minecraft:spruce_planks",
    "minecraft:brich_planks",
    "minecraft:acacia_planks",
    "minecraft:jungle_planks",
    "minecraft:stick",
    "growthcraft_apples:stick",
    "astralsorcery:shaped/altar_tier_1"
];

val removeByModid as string[] = [
    "biomesoplenty"
];

if(!isInvalid) {
recipes.removeShaped(<minecraft:stick>*16,[
    [<ore:logWood>, null],
    [<ore:logWood>, null]
]);
recipes.removeShaped(<minecraft:stick>*16,[
    [null, <ore:logWood>],
    [null, <ore:logWood>]
]);

for item in removeByOutput {
    recipes.remove(item);
}

for name in removeByRecipeName {
    recipes.removeByRecipeName(name);
}

for id in removeByModid {
    recipes.removeByMod(id);
}
//damn furnace
furnace.removeAll();

}
