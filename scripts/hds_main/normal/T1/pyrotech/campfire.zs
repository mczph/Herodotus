#packmode normal
#priority -1

import mods.pyrotech.Campfire;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
//Remove

//Add
Campfire.addRecipe("stone_axe_head", <tconstruct:axe_head>.withTag({Material: "stone"}), <ore:rock>, 100);
Campfire.addRecipe("stone_picaxe_head", <tconstruct:pick_head>.withTag({Material: "stone"}), <ore:itemFlint>, 100);
}