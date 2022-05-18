#packmode normal
#priority -1

import mods.tconstruct.Casting;
import scripts.hds_lib.crtlib;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

for shape in crtlib.shapes {
    Casting.addTableRecipe(itemUtils.getItem("contenttweaker:" ~ shape ~ "_recrystallized"),
        null, game.getLiquid(shape ~ "_plastic"), 250, false, 60);
}


Casting.addBasinRecipe(<contenttweaker:static_molten_plastic>, <contenttweaker:sticky_gel>, <liquid:light_oil>, 360, true, 45 * 20);
Casting.addTableRecipe(<factorytech:ingot:6>, <tconstruct:cast_custom>, <liquid:molten_river_copper>, 144, false, 2 * 20);
Casting.addTableRecipe(<factorytech:ingot:7>, <tconstruct:cast_custom>, <liquid:molten_river_nickel>, 144, false, 2 * 20);
Casting.addTableRecipe(<factorytech:ingot:5>, <tconstruct:cast_custom>, <liquid:molten_river_iron>, 144, false, 2 * 20);
Casting.addTableRecipe(<tconstruct:cast_custom>, <pyrotech:material:16>, <liquid:alubrass>, 144, true, 4 * 20);
Casting.removeTableRecipe(<tconstruct:materials>);
Casting.removeBasinRecipe(<tconstruct:seared_glass>);
Casting.removeBasinRecipe(<tconstruct:seared_furnace_controller>);
Casting.removeBasinRecipe(<tconstruct:seared>);
Casting.removeBasinRecipe(<tconstruct:seared:1>);
}
