#packmode normal
#priority -1

import mods.factorytech.Crucible;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

Crucible.addRecipe(<liquid:yellow_t2> * 500, <ore:clumpYellow>, false);
Crucible.addRecipe(<liquid:red_t2> * 500, <ore:clumpRed>, false);
Crucible.addRecipe(<liquid:blue_t2> * 500, <ore:clumpBlue>, false);
Crucible.addRecipe(<liquid:brass> * 144, <ore:ingotBrass>, false);
Crucible.addRecipe(<liquid:silver> * 144, <ore:gemChippedSilver>, false);
Crucible.addRecipe(<liquid:mercury> * 250, <ore:sphericalTierTwoYellow>, false);
Crucible.addRecipe(<liquid:mercury> * 500, <ore:ingotMercury>, true);
Crucible.addRecipe(<liquid:molten_gel>, <contenttweaker:impure_gel>, false);
}
