#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import scripts.grassUtils.CotUtils;


//register
val lw = VanillaFactory.createFluid("limewater", 0x858585);
lw.register();

val dw = VanillaFactory.createFluid("distilledwater", 0x43ECFB);
dw.register();

val md = VanillaFactory.createFluid("molten_gel", 0xcdcdcd);
md.register();

CotUtils.addFluid("rhombus_plastic", 0xdddddd, 1000, 1000, 1000, 15, true);
CotUtils.addFluid("spherical_plastic", 0xdddddd, 1000, 1000, 1000, 15, true);
CotUtils.addFluid("square_plastic", 0xdddddd, 1000, 1000, 1000, 15, true);
CotUtils.addFluid("lively_water", 0x66ccff, 300, 1000, 1000, 0, false);
