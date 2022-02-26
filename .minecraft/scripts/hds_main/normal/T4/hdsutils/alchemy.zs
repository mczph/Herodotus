#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.hdsutils.Alchemy;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

Alchemy.setAlchemyFluid(<liquid:red>, {32 : 9});
Alchemy.setAlchemyFluid(<liquid:yellow>, {48 : 9});
Alchemy.setAlchemyFluid(<liquid:blue>, {64 : 9});

}
