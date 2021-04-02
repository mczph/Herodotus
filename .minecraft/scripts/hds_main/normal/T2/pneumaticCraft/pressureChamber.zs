#packmode normal
#priority -1

import mods.pneumaticcraft.pressurechamber;
import crafttweaker.item.IItemStack;
import scripts.hds_main.normal.colorize;

for shape in colorize.shapes {
    pressurechamber.addRecipe([colorize.getShapeVariant(shape, "recrystallized") * 2, <contenttweaker:black_dye>], 1.5, [colorize.getShapeVariant(shape, "polluted") * 2]);
}