#packmode normal
#priority -1

import mods.pyrotech.Burn;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

Burn.createBuilder("mercury_burn", <pyrotech:material> * 2, "contenttweaker:yellow_spherical_block")
    .setTotalBurnTimeTicks(4 * 60 * 20)
    .setFluidProduced(<liquid:mercury> * 500)
    .register();

Burn.createBuilder("raw_iron_burn", <pyrotech:generated_slag_iron>, "pyrotech:generated_pile_slag_iron")
    .setTotalBurnTimeTicks(5 * 60 * 20)
    .setFluidProduced(<liquid:molten_raw_iron> * 500)
    .setFailureChance(0.05f)
    .addFailureItem(<pyrotech:material> * 3)
    .addFailureItem(<pyrotech:material> * 5)
    .setRequiresRefractoryBlocks(true)
    .register();
}