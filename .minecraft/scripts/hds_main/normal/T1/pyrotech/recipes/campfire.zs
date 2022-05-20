#packmode normal
#priority -1

import mods.pyrotech.Campfire;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//Remove
Campfire.removeRecipes(<pyrotech:material:22>);
Campfire.removeRecipes(<pyrotech:book>);

//Add
Campfire.addRecipe("stone_hammer_head", <tconstruct:hammer_head>.withTag({Material: "flint"}), <pyrotech:material:10>, 200);
Campfire.addRecipe("quicklime", <pyrotech:material:22>, <pyrotech:material:28>, 60 * 20);
Campfire.addRecipe("quicklime_overtime", <pyrotech:material>, <pyrotech:material:22>, 60 * 20);
Campfire.addRecipe("quicker_book", <pyrotech:book>, <minecraft:book>, 10 * 20);
}
