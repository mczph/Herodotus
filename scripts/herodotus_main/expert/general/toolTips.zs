#packmode expert
#modloaded bathappymod
#priority -100

import crafttweaker.item.IIngredient;
import crafttweaker.formatting.IFormattedText;
import mods.zenutils.I18n;

val darkAqua as string[IIngredient] = {
    <botania:opencrate> : game.localize("hds.tooltip.gone"),
    <tconstruct:cast_custom:3> : game.localize("hds.tooltip.gone"),
    <tconstruct:cast_custom:4> : game.localize("hds.tooltip.gone")
};

val red as string[IIngredient] = {

};

val gold as string[IIngredient] = {

};


//Settlement
for item in darkAqua{
    item.addTooltip(format.darkAqua(darkAqua[item]));
}

for item in red{
    item.addTooltip(format.red(red[item]));
}

for item in gold{
    item.addTooltip(format.gold(gold[item]));
}
