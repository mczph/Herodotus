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
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:red_t2> * 200)
    .addAspectOutput("ignis", 40)
    .build();

RecipeBuilder.newBuilder("btmm_blue", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:blue_t2> * 200)
    .addAspectOutput("aqua", 40)
    .build();

RecipeBuilder.newBuilder("btmm_yellow", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:yellow_t2> * 200)
    .addAspectOutput("aer", 40)
    .build();

RecipeBuilder.newBuilder("btmm_perdotio", "basic_thermal_melting_machine", 50)
    .addItemInput(<contenttweaker:rhythmic_seed> * 5)
    .addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}))
    .addHotAirInput(250, 250, maxInt)
    .addAspectOutput("perditio", 200)
    .build();

RecipeBuilder.newBuilder("btmm_fluid_aspect", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addFluidInput(<liquid:flux_goo> * 200)
    .addHotAirInput(250, 250, maxInt)
    .addAspectOutput("vitium", 40)
    .addFluidOutput(<liquid:unstable_aura> * 200)
    .build();

RecipeBuilder.newBuilder("btmm_terra", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addItemInput(<ore:dirt>, 16)
    .addFluidInput(<liquid:unstable_aura> * 200)
    .addHotAirInput(250, 250, maxInt)
    .addAspectOutput("terra", 40)
    .build();

RecipeBuilder.newBuilder("btmm_victus", "basic_thermal_melting_machine", 10)
    .addItemInput(<contenttweaker:flesh_bolus>)
    .addFluidInput(<liquid:taint_nutrition> * 200)
    .addHotAirInput(250, 250, maxInt)
    .addFluidOutput(<liquid:lifeessence> * 500)
    .addAspectOutput("vitium", 40)
    .build();
}
