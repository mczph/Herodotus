#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.factorytech.MetalCutter;

if (!isInvalid) {
    MetalCutter.addRecipe(<pyrotech:material:20>, <ore:slabWood>, true);
}