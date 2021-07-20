#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val maxInt as int = 2147483647;

RecipeBuilder.newBuilder("btmm_red", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(230, maxInt, 230)
    .addFluidInput(<liquid:red_t2> * 200)
    .addAspectOutput("ignis", 200)
    .build();

RecipeBuilder.newBuilder("btmm_blue", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(230, maxInt, 230)
    .addFluidInput(<liquid:blue_t2> * 200)
    .addAspectOutput("aqua", 200)
    .build();

RecipeBuilder.newBuilder("btmm_yellow", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(230, maxInt, 230)
    .addFluidInput(<liquid:yellow_t2> * 200)
    .addAspectOutput("aer", 200)
    .build();
}
