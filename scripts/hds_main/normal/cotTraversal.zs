#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.grassUtils.StringHelper.toSnakeCase;
import scripts.grassUtils.RecipeUtils.createFull2;
import scripts.grassUtils.RecipeUtils.createFull3;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

for item in <item:contenttweaker:material_part>.definition.subItems {
    if (item.ores[0].name.startsWith("ingot")) {
        val ingot as IItemStack = item;
        val name as string = item.ores[0].name.substring("ingot".length);
        val nameSnake as string = toSnakeCase(name);
        val block as IOreDictEntry = oreDict.get("block" ~ name);
        val nugget as IOreDictEntry = oreDict.get("nugget" ~ name);
        val dust as IOreDictEntry = oreDict.get("dust" ~ name);
        val dustSmall as IOreDictEntry = oreDict.get("dustSmall" ~ name);
        val dustTiny as IOreDictEntry = oreDict.get("dustTiny" ~ name);

        recipes.addShaped("block_" ~ nameSnake, block.firstItem, createFull3(ingot));
        recipes.addShaped("ingot_from_block_" ~ nameSnake, ingot * 9, [[block]]);
        recipes.addShaped("ingot_from_nugget_" ~ nameSnake, ingot, createFull3(nugget));
        recipes.addShaped("nugget" ~ nameSnake, nugget.firstItem * 9, [[ingot]]);
        recipes.addShaped("small_dust_" ~ nameSnake, dustSmall.firstItem * 4, [[dust]]);
        recipes.addShaped("tiny_dust_" ~ nameSnake, dustTiny.firstItem * 9, [[dust]]);
        recipes.addShaped("dust_from_small_" ~ nameSnake, dust.firstItem, createFull2(dustSmall));
        recipes.addShaped("dust_from_tiny_" ~ nameSnake, dust.firstItem, createFull3(dustTiny));
    }
}
}