#packmode normal
#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T3.thaumcraft.arcaneWorkbench.toRemove;
import mods.thaumcraft.ArcaneWorkbench;

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

if(!isInvalid){

RecipeBuilder.newBuilder("essentia_output", "aura_assembler", 240)
    .addItemInput(<ore:plateBrass>, 2)
    .addItemInput(<ore:blockGlowstone>)
    .addItemInput(<ore:ingotIronCompressed>, 3)
    .addItemInput(<contenttweaker:bottled_aura>*2)
    .addHotAirInput(250, maxInt, 250)
    .addItemOutput(<thaumcraft:essentia_output>)
    .build();

RecipeBuilder.newBuilder("essentia_input", "aura_assembler", 240)
    .addItemInput(<ore:plateBrass>, 2)
    .addItemInput(<ore:blockQuartz>)
    .addItemInput(<ore:ingotIronCompressed>, 3)
    .addItemInput(<contenttweaker:bottled_aura>*2)
    .addHotAirInput(250, maxInt, 250)
    .addItemOutput(<thaumcraft:essentia_input>)
    .build();

for recipe in ArcaneWorkbench.getAll() {
    val out as IItemStack = recipe.output;
    val vis as int = recipe.vis;
    var flag as bool = false;
    for item in toRemove {
        if (item.matches(out)) {
            flag = true;
            break;
        }
    }
    if (flag) {
        continue;
    }
    val builder = RecipeBuilder.newBuilder(recipe.name, "aura_assembler", 240);
    for ingredient, count in countIngredients(recipe.ingredients1D) {
        if (ingredient instanceof IItemStack) {
            val stack as IItemStack = ingredient;
            builder.addItemInput(stack * count);
        } else if (ingredient instanceof IOreDictEntry) {
            val od as IOreDictEntry = ingredient;
            builder.addItemInput(od, count);
        }
    }
    builder.addItemInput(<contenttweaker:bottled_aura> * (vis / 20 + 1))
        .addHotAirInput(250, maxInt, 250)
        .addItemOutput(out)
        .build();
}

}
