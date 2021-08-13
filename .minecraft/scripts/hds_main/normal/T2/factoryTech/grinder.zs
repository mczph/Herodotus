#packmode normal
#priority -1

import mods.factorytech.Grindstone;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
Grindstone.addRecipe(<ore:orePurifiedNickel>.materialPart * 2, <ore:squareTierTwoRed>, true);
Grindstone.addRecipe(<ore:dirtyDustRedstone>.materialPart * 3, <ore:rhombusTierTwoRed>, false);
Grindstone.addRecipe(<ore:dirtyDustQuartz>.materialPart * 3,  <ore:rhombusTierTwoBlue>, false);
Grindstone.addRecipe(<ore:orePurifiedLead>.materialPart * 2,  <ore:squareTierTwoBlue>, true);
}
