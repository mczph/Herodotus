#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import scripts.grassUtils.StringHelper.toSnakeCase;
import scripts.grassUtils.RecipeUtils.createFull2;
import scripts.grassUtils.RecipeUtils.createFull3;

import mods.tconstruct.Casting;
import mods.prodigytech.rotarygrinder;
import scripts.hds_main.normal.T1.prodigyTech.prtFunctions.LOERProcesser;
import mods.pyrotech.IroncladAnvil;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroAnvil;
import mods.artisanworktables.builder.RecipeBuilder;

import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

// unidict
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("gear");

for item in <item:contenttweaker:material_part>.definition.subItems {
    if (item.ores[0].name.startsWith("ingot")) { // metal
        val ingot as IItemStack = item;
        val name as string = item.ores[0].name.substring("ingot".length);
        val nameSnake as string = toSnakeCase(name);
        val block as IOreDictEntry = oreDict.get("block" ~ name);
        val nugget as IOreDictEntry = oreDict.get("nugget" ~ name);
        val dust as IOreDictEntry = oreDict.get("dust" ~ name);
        val dustSmall as IOreDictEntry = oreDict.get("dustSmall" ~ name);
        val dustTiny as IOreDictEntry = oreDict.get("dustTiny" ~ name);
        val shard as IOreDictEntry = oreDict.get("shard" ~ name);
        val plate as IOreDictEntry = oreDict.get("plate" ~ name);
        val gear as IOreDictEntry = oreDict.get("gear" ~ name);
        val rock as IOreDictEntry = oreDict.get("rock" ~ name);
        val crushed as IOreDictEntry = oreDict.get("crushedOre" ~ name);
        val lightPlate as IOreDictEntry = oreDict.get("lightPlate" ~ name);
        val rod as IOreDictEntry = oreDict.get("rod" ~ name);
        val rodLong as IOreDictEntry = oreDict.get("rodLong" ~ name);
        val molten as ILiquidStack = game.getLiquid(nameSnake);

        //basic recipes
        recipes.addShaped("block_" ~ nameSnake, block.materialPart, createFull3(ingot));
        recipes.addShaped("ingot_from_block_" ~ nameSnake, ingot * 9, [[block]]);
        recipes.addShaped("ingot_from_nugget_" ~ nameSnake, ingot, createFull3(nugget));
        recipes.addShaped("nugget" ~ nameSnake, nugget.materialPart * 9, [[ingot]]);
        recipes.addShaped("small_dust_" ~ nameSnake, dustSmall.materialPart * 4, [[dust]]);
        recipes.addShaped("tiny_dust_" ~ nameSnake, dustTiny.materialPart * 9, [[dust]]);
        recipes.addShaped("dust_from_small_" ~ nameSnake, dust.materialPart, createFull2(dustSmall));
        recipes.addShaped("dust_from_tiny_" ~ nameSnake, dust.materialPart, createFull3(dustTiny));

        //tcon
        // comment these due to cast issue
        /* if (!fourNuggets.empty) {
            recipes.addShaped("four_nuggets_unpack_" ~ nameSnake, nugget.materialPart * 4, [[fourNuggets]]);
            recipes.addShaped("four_nuggets_pack_" ~ nameSnake, fourNuggets.materialPart, createFull2(nugget));
            
            if (!isNull(molten)) {
                Casting.addTableRecipe(fourNuggets.materialPart, <contenttweaker:cast_four_nuggets>, molten, 64, false, 120);
                Casting.addTableRecipe(nugget.materialPart, <contenttweaker:copper_nugget_cast>, molten, 16, false, 60);
            } 
        }
        if (!gear.empty && !isNull(molten)) {
            Casting.addTableRecipe(gear.materialPart, <contenttweaker:copper_gear_cast>, molten, 864, false, 80);
        } */

        //prodigytech
        if (!dust.empty && !shard.empty) {LOERProcesser(dust, shard.materialPart);}
        //if (!rock.empty && !crushed.empty) {rotarygrinder.addRecipe(rock, crushed.materialPart);}

        //pyrotech
        if (!block.empty && !plate.empty && nameSnake != "coal") {
            allPyroAnvil("block_to_plate_ptanvil_" ~ nameSnake, plate.materialPart * 4, block, 6, "hammer");
        }
        if (!lightPlate.empty && !rod.empty && !rodLong.empty){
            allPyroAnvil("lightplate_to_rod_ptanvil_" ~ nameSnake, rod.materialPart*3, lightPlate, 6, "pickaxe");
            RecipeBuilder.get("blacksmith")
                .setName("rod_to_longrod" ~ nameSnake)
                .setShapeless([rod, rod])
                .addTool(<contenttweaker:hot_air_solderer>, 10)
                .addOutput(rodLong.materialPart)
                .create();
        }

    } else if (item.ores[0].name.startsWith("cluster")) {
        val name as string = item.ores[0].name.substring("cluster".length);
        val nameSnake as string = toSnakeCase(name);
        if (oreDict.get("ingot" ~ name).empty) { // gem
            val dust as IOreDictEntry = oreDict.get("dust" ~ name);
            val dustTiny as IOreDictEntry = oreDict.get("dustTiny" ~ name);
            val dustSmall as IOreDictEntry = oreDict.get("dustSmall" ~ name);
            val fourNuggets as IOreDictEntry = oreDict.get("fourNuggets" ~ name);

            recipes.addShaped("small_dust_" ~ nameSnake, dustSmall.materialPart * 4, [[dust]]);
            recipes.addShaped("tiny_dust_" ~ nameSnake, dustTiny.materialPart * 9, [[dust]]);
            recipes.addShaped("dust_from_small_" ~ nameSnake, dust.materialPart, createFull2(dustSmall));
            recipes.addShaped("dust_from_tiny_" ~ nameSnake, dust.materialPart, createFull3(dustTiny));
        }
    }
}
}