#packmode normal
#loader multiblocked
#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.multiblocked.recipe.RecipeMap;
import mods.thaumcraft.AspectStack;
import mods.thaumcraft.ArcaneWorkbench;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_lib.crtlib.toRemoveArcaneRecipes;

function countIngredients(inputs as IIngredient[]) as int[IIngredient] {
    val result as int[IIngredient] = {};
    for input in inputs {
        var flag as bool = false;
        if (!isNull(input)) {
            for item, count in result {
                if (item has input) {
                    result[item] = count + 1;
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                result[input] = 1;
            }
        }
    }
    return result;
}

if (!isInvalid) {
    val map as RecipeMap = <mbd:recipe_map:aura_assembler>;

    map.start()
        .inputItems(<ore:seedWheat>, <prodigytech:primordium>, <contenttweaker:bottled_aura> * 3)
        .inputHotAir(250)
        .outputItems(<contenttweaker:basic_vis_seed>)
        .buildAndRegister();
    
    map.start()
        .inputItems(<ore:plateBrass> * 2, <ore:blockGlowstone>, <ore:ingotIronCompressed> * 3, <contenttweaker:bottled_aura> * 2)
        .inputHotAir(250)
        .outputItems(<thaumcraft:essentia_output>)
        .buildAndRegister();

    map.start()
        .inputItems(<ore:plateBrass> * 2, <ore:blockQuartz>, <ore:ingotIronCompressed> * 3, <contenttweaker:bottled_aura> * 2)
        .inputHotAir(250)
        .outputItems(<thaumcraft:essentia_input>)
        .buildAndRegister();

    map.start()
        .inputItems(<ore:ingotElectrum> * 2, <ore:dustGlowstone> * 4, <thaumcraft:fabric>, <contenttweaker:bottled_aura> * 2)
        .inputHotAir(250)
        .outputItems(<contenttweaker:void_traveler_amulet>)
        .buildAndRegister();

    map.start()
        .inputItems(<ore:plateSilver> * 12, <ore:ingotAstralStarmetal> * 8, <prodigytech:primordium> * 4, <ore:nitor> * 4, <contenttweaker:bottled_aura> * 8)
        .inputHotAir(250)
        .outputItems(<hdsutils:penumbra_ring>)
        .buildAndRegister();

    for recipe in ArcaneWorkbench.getAll() {
        val out as IItemStack = recipe.output;
        val vis as int = recipe.vis;
        var flag as bool = false;
        for item in toRemoveArcaneRecipes {
            if (item.matches(out)) {
                flag = true;
                break;
            }
        }
        if (flag) {
            continue;
        }
        var inputs as IIngredient[] = [];
        for ingredient, count in countIngredients(recipe.ingredients1D) {
            inputs += ingredient * count;
        }
        inputs += <contenttweaker:bottled_aura> * (vis / 20 + 1);
        map.start()
            .duration(240)
            .inputItems(inputs)
            .inputHotAir(250)
            .outputItems(out)
            .buildAndRegister();
    }
}
