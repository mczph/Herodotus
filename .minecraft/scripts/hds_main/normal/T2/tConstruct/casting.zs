#packmode normal
#priority -1

import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

val map as IItemStack[ILiquidStack] = {
    <liquid:rhombus_plastic> : <contenttweaker:rhombus_recrystallized>,
    <liquid:square_plastic> : <contenttweaker:square_recrystallized>,
    <liquid:rhombus_plastic> : <contenttweaker:rhombus_recrystallized>
};

for liquid, item in map {
    Casting.addTableRecipe(item, null, liquid, 250, false, 80);
}