#packmode normal
#priority -1

import crafttweaker.liquid.ILiquidStack;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.colorize;

if(!isInvalid){

FluidToFluid.transform(<liquid:limewater>, <liquid:water>, [<pyrotech:material:22>*2]);
FluidToItem.transform(<astralsorcery:blockcustomflower> * 4, <liquid:astralsorcery.liquidstarlight>, [<minecraft:tallgrass:1> * 4], true);
FluidToItem.transform(<prodigytech:energion_dust> * 3, <liquid:astralsorcery.liquidstarlight>, [<ore:dustQuartz> * 8, <ore:dustRedstone> * 8, <ore:dustGold> * 1], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, colorize.getColorEssences("red", 2), [<ore:clumpYellow>, <ore:clumpBlue>], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, colorize.getColorEssences("yellow", 2), [<ore:clumpRed>, <ore:clumpBlue>], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, colorize.getColorEssences("blue", 2), [<ore:clumpRed>, <ore:clumpYellow>], true);
FluidToItem.transform(<contenttweaker:impure_gel>, <liquid:limewater>, [<contenttweaker:sticky_gel>], true);
}
