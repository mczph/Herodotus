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
}