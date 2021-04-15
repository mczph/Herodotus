#packmode normal
#priority -1

import mods.factorytech.Magnetizer;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

    Magnetizer.addRecipe(<magneticraft:oil_source:10>, <contenttweaker:punched_stone>, false);
    Magnetizer.addRecipe(<factorytech:machinepart:130>, <ore:ingotIron>, false);
}