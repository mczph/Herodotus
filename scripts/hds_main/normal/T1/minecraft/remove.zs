#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//something that recipeutils can't do or just remove
recipes.removeByRecipeName("minecraft:crafting_table");
recipes.removeByRecipeName("minecraft:dark_oak_planks");
recipes.removeByRecipeName("minecraft:oak_planks");
recipes.removeByRecipeName("minecraft:brich_planks");
recipes.removeByRecipeName("minecraft:jungle_planks");
recipes.removeByRecipeName("minecraft:stick");
recipes.removeByRecipeName("growthcraft_apples:stick");

recipes.removeShaped(<minecraft:stick>*16,[
    [<ore:logWood>, null],
    [<ore:logWood>, null]
]);
recipes.removeShaped(<minecraft:stick>*16,[
    [null, <ore:logWood>],
    [null, <ore:logWood>]
]);

recipes.remove(<tconstruct:casting>);
recipes.remove(<tconstruct:casting:1>);

//damn furnace
furnace.removeAll();

}
