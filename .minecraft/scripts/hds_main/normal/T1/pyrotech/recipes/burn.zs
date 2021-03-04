#packmode normal
#priority -1

import mods.pyrotech.Burn;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

Burn.createBuilder("mercury_burn", <pyrotech:material> * 2, "contenttweaker:yellow_spherical_block")
    .setTotalBurnTimeTicks(6 * 60 * 20)
    .setFluidProduced(<liquid:mercury> * 500)
    .register();
}