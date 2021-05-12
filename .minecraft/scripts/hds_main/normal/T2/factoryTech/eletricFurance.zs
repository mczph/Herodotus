#packmode normal
#priority -1

import mods.factorytech.ElectricFurnace;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
ElectricFurnace.addRecipe(<ore:gemChippedCopper>.materialPart, <ore:squareTierTwoYellow>, false);
ElectricFurnace.addRecipe(<ore:gemChippedTin>.materialPart, <ore:sphericalTierTwoBlue>, false);
ElectricFurnace.addRecipe(<minecraft:coal> * 3, <ore:rhombusTierTwoYellow>, false);
ElectricFurnace.removeRecipe(<ore:ingotNickel>);
}