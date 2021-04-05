#packmode normal
#priority -1

import mods.pneumaticcraft.pressurechamber;
import crafttweaker.item.IItemStack;
import scripts.hds_main.normal.colorize;
import scripts.hds_lib.crtlib;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
for shape in crtlib.shapes {
    pressurechamber.addRecipe([colorize.getShapeVariant(shape, "recrystallized") * 2, <contenttweaker:black_dye>], 1.5, [colorize.getShapeVariant(shape, "polluted") * 2]);
}
pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);

val livelyWaterBucket as IItemStack = <forge:bucketfilled>.withTag({FluidName: "lively_water", Amount: 1000});
pressurechamber.addRecipe([livelyWaterBucket, <ore:ingotIron>], 2.0, [<factorytech:ingot:5>]);
pressurechamber.addRecipe([livelyWaterBucket, <ore:ingotCopper>], 2.0, [<factorytech:ingot:6>]);
pressurechamber.addRecipe([livelyWaterBucket, <ore:ingotNickel>], 2.0, [<factorytech:ingot:7>]);
pressurechamber.addRecipe([<magneticraft:crafting:2>, <pneumaticcraft:plastic:8>, <magneticraft:crafting:3>, <ore:dustRedstone> * 4, <ore:gemQuartz> * 2], 2.4, [<factorytech:intermediate:4>]);
pressurechamber.addRecipe([<ore:shardNickel> * 2, <pyrotech:rock:2> * 3], 1.5, [<ore:gemChippedNickel>.materialPart]);
}