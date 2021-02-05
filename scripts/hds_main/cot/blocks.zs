#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val ysb as Block = VanillaFactory.createBlock("yellow_spherical_block", <blockmaterial:clay>);
ysb.blockHardness = 1.0f;
ysb.register();

VanillaFactory.createBlock("starlight_frame", <blockmaterial:rock>).register();
