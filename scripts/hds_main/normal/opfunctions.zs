#packmode normal
#priority 0

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.inworldcrafting.FluidToFluid;
import mods.pyrotech.SoakingPot;

//T1
function t1op1(name as string, inputItem1 as IItemStack[], 
               inputItem2 as IIngredient, midLiquid as ILiquidStack, 
               outputItem as IItemStack){
    FluidToFluid.transform(midLiquid, <liquid:limewater>, inputItem1);
    SoakingPot.addRecipe(name, outputItem, midLiquid, inputItem2, 1 * 60 * 20);
}
