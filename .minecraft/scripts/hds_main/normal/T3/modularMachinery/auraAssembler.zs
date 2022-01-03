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

RecipeBuilder.newBuilder("basic_aspect_seed", "aura_assembler", 240)
    .addItemInput(<ore:seedWheat>)
    .addItemInput(<prodigytech:primordium>)
    .addItemInput(<contenttweaker:bottled_aura> * 3)
    .addHotAirInput(250, 250, maxInt)
    .addItemOutput(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "herodotus_basic_vis_plant", agri_growth: 1 as byte}))
    .build();

RecipeBuilder.newBuilder("essentia_output", "aura_assembler", 240)
    .addItemInput(<ore:plateBrass>, 2)
    .addItemInput(<ore:blockGlowstone>)
    .addItemInput(<ore:ingotIronCompressed>, 3)
    .addItemInput(<contenttweaker:bottled_aura> * 2)
    .addHotAirInput(250, 250, maxInt)
    .addItemOutput(<thaumcraft:essentia_output>)
    .build();

RecipeBuilder.newBuilder("essentia_input", "aura_assembler", 240)
    .addItemInput(<ore:plateBrass>, 2)
    .addItemInput(<ore:blockQuartz>)
    .addItemInput(<ore:ingotIronCompressed>, 3)
    .addItemInput(<contenttweaker:bottled_aura> * 2)
    .addHotAirInput(250, 250, maxInt)
    .addItemOutput(<thaumcraft:essentia_input>)
    .build();

RecipeBuilder.newBuilder("refined_input_bus", "aura_assembler", 240)
    .addItemInput(<ore:plateThaumium>, 2)
    .addItemInput(<ore:clumpBlue>)
    .addItemInput(<ore:plateInvar>, 6)
    .addItemInput(<contenttweaker:bottled_aura> * 2)
    .addHotAirInput(250, 250, maxInt)
    .addItemOutput(<modularmachinery:blockinputbus:3>)
    .build();

RecipeBuilder.newBuilder("refined_output_bus", "aura_assembler", 240)
    .addItemInput(<ore:plateThaumium>, 2)
    .addItemInput(<ore:clumpYellow>)
    .addItemInput(<ore:plateInvar>, 6)
    .addItemInput(<contenttweaker:bottled_aura> * 2)
    .addHotAirInput(250, 250, maxInt)
    .addItemOutput(<modularmachinery:blockoutputbus:3>)
    .build();

RecipeBuilder.newBuilder("void_traveller_amulet", "aura_assembler", 400)
    .addItemInput(<ore:ingotElectrum>, 2)
    .addItemInput(<ore:dustGlowstone>, 4)
    .addItemInput(<thaumcraft:fabric> * 1)
    .addItemInput(<contenttweaker:bottled_aura> * 2)
    .addHotAirInput(250, 250, maxInt)
    .addItemOutput(<contenttweaker:void_traveler_amulet>)
    .build();

RecipeBuilder.newBuilder("penumbra_ring", "aura_assembler", 400)
    .addItemInput(<ore:plateSilver>, 12)
    .addItemInput(<ore:ingotAstralStarmetal>, 8)
    .addItemInput(<prodigytech:primordium> * 4)
    .addItemInput(<ore:nitor>, 4)
    .addItemInput(<contenttweaker:bottled_aura> * 8)
    .addHotAirInput(250, 250, maxInt)
    .addItemOutput(<hdsutils:penumbra_ring>)
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
        .addHotAirInput(250, 250, maxInt)
        .addItemOutput(out)
        .build();
}

}
