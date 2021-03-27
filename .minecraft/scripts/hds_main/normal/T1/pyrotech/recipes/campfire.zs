#packmode normal
#priority -1

import mods.pyrotech.Campfire;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//Remove

//Add
Campfire.addRecipe("stone_picaxe_head", <tconstruct:pick_head>.withTag({Material: "flint"}), <ore:itemFlint>, 100);
Campfire.addRecipe("quicklime", <pyrotech:material:22>, <pyrotech:material:28>, 2 * 60 * 20);
Campfire.addRecipe("quicklime_overtime", <pyrotech:material>, <pyrotech:material:22>, 2 * 60 * 20);
Campfire.addRecipe("lime", <pyrotech:material:22>, <ore:dustLimestone>, 15*20);
}