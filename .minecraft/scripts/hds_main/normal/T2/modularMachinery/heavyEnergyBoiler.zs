#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.newBuilder("heb_dwater", "heavy_energy_boiler", 10*20, 0)
    .addFluidInput(<liquid:water>*100)
    .addFuelItemInout(10*20)
    .addFluidOutput(<liquid:distilledwater>*100)
    .build();

RecipeBuilder.newBuilder("heb_steam", "heavy_energy_boiler", 2*20, 0)
    .addFluidInput(<liquid:distilledwater>*800)
    .addItemInput(<prodigytech:energion_crystal_seed>)
    .addFluidOutput(<liquid:steam>*1000)
    .build();

}