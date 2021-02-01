#packmode normal
#priority -1

import crafttweaker.liquid.ILiquidStack;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
FluidToFluid.transform(<liquid:limewater>, <liquid:water>, [<pyrotech:material:22>*3]);

}