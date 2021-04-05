#packmode normal
#priority -1

import mods.factorytech.CompressionChamber;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
CompressionChamber.removeRecipe(<factorytech:machinepart:140>);
}