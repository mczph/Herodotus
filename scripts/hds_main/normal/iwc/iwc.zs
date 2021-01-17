#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
mods.inworldcrafting.FluidToFluid.transform(<liquid:limewater>, <liquid:water>, [<pyrotech:material:22> *3]);
}