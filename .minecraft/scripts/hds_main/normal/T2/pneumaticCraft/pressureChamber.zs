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
pressurechamber.addRecipe([livelyWaterBucket, <ore:ingotIron>], 2.0, [<factorytech:ingot:5>, <minecraft:bucket>]);
pressurechamber.addRecipe([livelyWaterBucket, <ore:ingotCopper>], 2.0, [<factorytech:ingot:6>, <minecraft:bucket>]);
pressurechamber.addRecipe([livelyWaterBucket, <ore:ingotNickel>], 2.0, [<factorytech:ingot:7>, <minecraft:bucket>]);
pressurechamber.addRecipe([<magneticraft:crafting:2>, <pneumaticcraft:plastic:8>, <minecraft:redstone> * 4, <minecraft:quartz> * 2], 2.4, [<factorytech:intermediate:4>]);
pressurechamber.addRecipe([<ore:shardNickel>.materialPart * 2, <pyrotech:rock:2> * 3], 1.5, [<ore:gemChippedNickel>.materialPart]);
pressurechamber.addRecipe([<magneticraft:battery_item_low>.withTag({energy: 250000}), <factorytech:intermediate:2> * 32], 3.5, [<factorytech:machinepart:140> * 32]);
pressurechamber.addRecipe([<ore:densePlateNickel>.materialPart * 4, <prodigytech:primordium> * 8, <pneumaticcraft:plastic:2> * 16, <factorytech:machinepart:111> * 2, <factorytech:machinepart:3> * 4, <factorytech:machinepart:140> * 24], 4.5, [<factorytech:disassembler>]);
pressurechamber.addRecipe([<factorytech:intermediate:4>, <factorytech:machinepart:21>], 2.5, [<factorytech:machinepart:60>]);
pressurechamber.addRecipe([<factorytech:intermediate:4>, <factorytech:machinepart:22>], 2.5, [<factorytech:machinepart:61>]);
}