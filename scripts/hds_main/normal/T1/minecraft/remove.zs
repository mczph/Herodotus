#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//something that recipeutils can't do or just remove
recipes.removeByRecipeName("minecraft:crafting_table");
recipes.removeByRecipeName("minecraft:coal_block");
recipes.removeByRecipeName("minecraft:dark_oak_planks");
recipes.removeByRecipeName("minecraft:oak_planks");
recipes.removeByRecipeName("minecraft:brich_planks");
recipes.removeByRecipeName("minecraft:jungle_planks");
recipes.removeByRecipeName("minecraft:stick");
recipes.removeByRecipeName("growthcraft_apples:stick");
recipes.removeByRecipeName("astralsorcery:shaped/altar_tier_1");

recipes.removeShaped(<minecraft:stick>*16,[
    [<ore:logWood>, null],
    [<ore:logWood>, null]
]);
recipes.removeShaped(<minecraft:stick>*16,[
    [null, <ore:logWood>],
    [null, <ore:logWood>]
]);

val toRemove as IItemStack[] = [
    <tconstruct:casting>,
    <tconstruct:casting:1>,
    <pyrotech:faucet_brick>,
    <prodigytech:solid_fuel_aeroheater>,
    <prodigytech:rotary_grinder>,
    <prodigytech:heat_sawmill>,
    <prodigytech:magmatic_aeroheater>,
    <prodigytech:ferramic_gear>,
    <astralsorcery:itemjournal>
];

for item in toRemove {
    recipes.remove(item);
}

//damn furnace
furnace.removeAll();

}
