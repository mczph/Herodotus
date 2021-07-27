#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.newBuilder("hot_air_boiler_steam", "hot_air_boiler", 10)
    .addFluidInput(<liquid:water> * 60)
    .addHotAirInput(230, maxInt, 230)
    .addFluidOutput(<liquid:steam> * 600)
    .build();
}
