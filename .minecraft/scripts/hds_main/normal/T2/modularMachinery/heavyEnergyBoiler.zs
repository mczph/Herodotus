#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val dw = RecipeBuilder.newBuilder("heb_dwater", "heavy_energy_boiler", 10*20, 0);
dw.addFluidInput(<liquid:water>*100)
.addFuelItemInout(10*20)
.addFluidOutput(<liquid:distilledwater>*100)
.build();

val st = RecipeBuilder.newBuilder("heb_steam", "heavy_energy_boiler", 2*20, 0);
st.addFluidInput(<liquid:distilledwater>*800)
.addItemInput(<prodigytech:energion_crystal_seed>)
.addFluidOutput(<liquid:steam>*1000)
.build();

}