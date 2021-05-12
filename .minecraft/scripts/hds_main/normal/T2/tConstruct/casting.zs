#packmode normal
#priority -1

import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val map as IItemStack[ILiquidStack] = {
    <liquid:rhombus_plastic> : <contenttweaker:rhombus_recrystallized>,
    <liquid:square_plastic> : <contenttweaker:square_recrystallized>,
    <liquid:spherical_plastic> : <contenttweaker:spherical_recrystallized>
};

for liquid, item in map {
    Casting.addTableRecipe(item, null, liquid, 250, false, 80);
}
Casting.addBasinRecipe(<contenttweaker:static_molten_plastic>, <contenttweaker:sticky_gel>, <liquid:light_oil>, 360, true, 45 * 20);
Casting.addBasinRecipe(<factorytech:ingot:6>, <tconstruct:cast_custom>, <liquid:molten_river_copper>, 144, false, 2 * 20);
Casting.addBasinRecipe(<factorytech:ingot:7>, <tconstruct:cast_custom>, <liquid:molten_river_nickel>, 144, false, 2 * 20);
Casting.addBasinRecipe(<factorytech:ingot:5>, <tconstruct:cast_custom>, <liquid:molten_river_iron>, 144, false, 2 * 20);
Casting.addTableRecipe(<tconstruct:cast_custom>, <pyrotech:material:16>, <liquid:alubrass>, 144, true, 4 * 20);
Casting.removeTableRecipe(<tconstruct:materials>);
Casting.removeBasinRecipe(<tconstruct:seared_glass>);
Casting.removeBasinRecipe(<tconstruct:seared_furnace_controller>);
Casting.removeBasinRecipe(<tconstruct:seared>);
Casting.removeBasinRecipe(<tconstruct:seared:1>);
}