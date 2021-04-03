#packmode normal
#priority -1

import crafttweaker.liquid.ILiquidStack;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

FluidToFluid.transform(<liquid:limewater>, <liquid:water>, [<pyrotech:material:22>*3]);
FluidToItem.transform(<astralsorcery:blockcustomflower>, <liquid:astralsorcery.liquidstarlight>, [<minecraft:tallgrass:1>], false);
FluidToItem.transform(<prodigytech:energion_dust>, <liquid:astralsorcery.liquidstarlight>, [<ore:dustQuartz> * 12, <ore:gemChippedGlimmerite> * 4, <ore:dustGold> * 2], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, getColorEssences("red", 2), [<ore:clumpYellow>, <ore:clumpBlue>], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, getColorEssences("yellow", 2), [<ore:clumpRed>, <ore:clumpBlue>], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, getColorEssences("blue", 2), [<ore:clumpRed>, <ore:clumpYellow>], true);
}
