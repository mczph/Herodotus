#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.hdsutils.Alchemy;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

Alchemy.setAlchemyFluid(<liquid:red_t2>, {32 : 9});
Alchemy.setAlchemyFluid(<liquid:yellow_t2>, {48 : 9});
Alchemy.setAlchemyFluid(<liquid:blue_t2>, {64 : 9});

Alchemy.setAlchemyFluid(<liquid:fluid_mana>, {77 : 3, 78 : 3, 79 : 3});
Alchemy.setAlchemyFluid(<liquid:infusion_solution>, {32 : 2, 48 : 2, 64 : 2, 77 : 2, 78 : 2, 79 : 2});
}
