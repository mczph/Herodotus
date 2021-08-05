#packmode normal
#priority -1

import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.uPyroKilns;

if(!isInvalid){

uPyroKilns("copper_nickel", <ore:ingotCupronickel>.firstItem, <ore:dustCuproNickel>, <ore:nuggetCopper>.materialPart, 45 * 20);
}
