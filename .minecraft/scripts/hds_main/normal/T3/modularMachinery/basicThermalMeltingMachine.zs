#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.newBuilder("btmm_red", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(250, maxInt, 250)
    .addFluidInput(<liquid:red_t2> * 200)
    .addAspectOutput("ignis", 200)
    .build();

RecipeBuilder.newBuilder("btmm_blue", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(250, maxInt, 250)
    .addFluidInput(<liquid:blue_t2> * 200)
    .addAspectOutput("aqua", 200)
    .build();

RecipeBuilder.newBuilder("btmm_yellow", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(250, maxInt, 250)
    .addFluidInput(<liquid:yellow_t2> * 200)
    .addAspectOutput("aer", 200)
    .build();

RecipeBuilder.newBuilder("btmm_perdotio", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}))
    .addHotAirInput(250, maxInt, 250)
    .addAspectOutput("perditio", 200)
    .build();

RecipeBuilder.newBuilder("btmm_fluid_aspect", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addFluidInput(<liquid:flux_goo> * 200)
    .addHotAirInput(250, maxInt, 250)
    .addAspectOutput("vitium", 200)
    .addFluidOutput(<liquid:unstable_aura> * 200)
    .build();

RecipeBuilder.newBuilder("btmm_fluid_aspect", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addItemInput(<ore:dirt>, 64)
    .addItemInput(<ore:dirt>, 64)
    .addFluidInput(<liquid:unstable_aura> * 200)
    .addHotAirInput(250, maxInt, 250)
    .addAspectOutput("terra", 200)
    .build();
}
