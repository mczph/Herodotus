#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){


RecipeBuilder.newBuilder("brass", "aspect_blast_furnace", 240)
    .addItemInput(<ore:ingotCopper>)
    .addHotAirInput(250, maxInt, 250)
    .addFluidInput(<liquid:yellow_t2> * 500)
    .addAspectInput("aer", 25)
    .addAspectInput("ignis", 25)
    .addItemOutput(<thaumcraft:ingot:2>)
    .build();

RecipeBuilder.newBuilder("brass_plank", "aspect_blast_furnace", 200)
    .addItemInput(<thaumcraft:plank_silverwood>)
    .addHotAirInput(250, maxInt, 250)
    .addFluidInput(<liquid:brass> * 36)
    .addAspectInput("ignis", 10)
    .addItemOutput(<thaumadditions:brass_plated_silverwood>)
    .build();
}
