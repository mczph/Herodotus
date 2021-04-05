#packmode normal
#priority -1

import mods.pyrotech.SoakingPot;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
SoakingPot.addRecipe("copper_wire", <magneticraft:crafting:3>, <fluid:molten_gel> * 250, <ore:rodLongCopper>, true, 60 * 20);
}
