#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.astralsorcery.Lightwell;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {

Lightwell.addLiquefaction(<ore:gemChippedGlimmerite>.materialPart, <fluid:astralsorcery.liquidstarlight>, 0.5, 0.8, 0xff9500);
Lightwell.addLiquefaction(<ore:gemFlawedGlimmerite>.materialPart, <fluid:astralsorcery.liquidstarlight>, 0.7, 1.0, 0xff9500);
Lightwell.addLiquefaction(<ore:gemFlawlessGlimmerite>.materialPart, <fluid:astralsorcery.liquidstarlight>, 1.2, 1.2, 0xff9500);
}
