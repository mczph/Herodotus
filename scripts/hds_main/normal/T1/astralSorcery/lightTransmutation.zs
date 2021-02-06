#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.astralsorcery.LightTransmutation;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {

LightTransmutation.addTransmutation(<contenttweaker:starlight_frame>, <astralsorcery:blockwell>, 120);
LightTransmutation.addTransmutation(<ore:oreGlass>.firstItem, <astralsorcery:blockcustomore:1>, 100);
}
