#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.astralsorcery.Lightwell;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {

Lightwell.addLiquefaction(<ore:gemChippedGlimmerite>.firstItem, <fluid:astralsorcery.liquidstarlight>, 0.3, 0.5, 0xff9500);
Lightwell.addLiquefaction(<ore:gemFlawedGlimmerite>.firstItem, <fluid:astralsorcery.liquidstarlight>, 0.5, 0.7, 0xff9500);
Lightwell.addLiquefaction(<ore:gemFlawlessGlimmerite>.firstItem, <fluid:astralsorcery.liquidstarlight>, 0.8, 1.0, 0xff9500);
}
