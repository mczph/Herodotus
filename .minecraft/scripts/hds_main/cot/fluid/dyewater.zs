#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import scripts.hds_lib.cotlib;

for name, color in cotlib.dyelist{
    VanillaFactory.createFluid(name, color).register();
}
