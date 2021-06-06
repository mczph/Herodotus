#packmode normal
#priority -1

import mods.pneumaticcraft.pressurechamber;
import crafttweaker.item.IItemStack;
import scripts.hds_main.normal.colorize;
import scripts.hds_lib.crtlib;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
for shape in crtlib.shapes {
    pressurechamber.addRecipe([colorize.getShapeVariant(shape, "recrystallized") * 2, <contenttweaker:black_dye>], 1.2, [colorize.getShapeVariant(shape, "polluted") * 2]);
}

pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);
pressurechamber.removeRecipe([<minecraft:diamond>]);
pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);

pressurechamber.addRecipe([<magneticraft:crafting:2>, <pneumaticcraft:plastic:8>, <minecraft:redstone> * 4, <minecraft:quartz> * 2], 1.6, [<factorytech:intermediate:4>]);
pressurechamber.addRecipe([<ore:shardNickel>.materialPart * 2, <pyrotech:rock:2> * 3], 1.5, [<ore:gemChippedNickel>.materialPart]);
pressurechamber.addRecipe([<magneticraft:battery_item_low>.withTag({energy: 250000}), <factorytech:intermediate:2> * 32], 3.5, [<factorytech:machinepart:140> * 32]);
pressurechamber.addRecipe([<ore:densePlateNickel>.materialPart * 4, <prodigytech:primordium> * 8, <pneumaticcraft:plastic:2> * 16, <factorytech:machinepart:111> * 2, <factorytech:machinepart:3> * 4, <factorytech:machinepart:140> * 24], 4.5, [<factorytech:disassembler>]);
pressurechamber.addRecipe([<factorytech:intermediate:4>, <factorytech:machinepart:21>], 1.2, [<factorytech:machinepart:60>]);
pressurechamber.addRecipe([<factorytech:intermediate:4>, <factorytech:machinepart:22>], 1.2, [<factorytech:machinepart:61>]);
pressurechamber.addRecipe([<ore:plateCopper>, <ore:plasticGreen>, <contenttweaker:impure_gel>], 1.6, [<pneumaticcraft:empty_pcb:100>]);
pressurechamber.addRecipe([<ore:plateCopper>, <ore:plasticGreen>, <contenttweaker:sticky_gel>, <pneumaticcraft:empty_pcb>], 1.6, [<pneumaticcraft:empty_pcb> * 2]);
pressurechamber.addRecipe([<ore:plateQuartz>.materialPart * 2], 2.0, [<ore:gemFlawedQuartz>.firstItem]);
}