#packmode normal expert
#modloaded bathappymod
#priority 0

import crafttweaker.item.IIngredient;
import crafttweaker.formatting.IFormattedText;

//Normals
val toAdd as string[IIngredient] = {
    <botania:opencrate> : "没了，别想了",
    <tconstruct:cast_custom:3> : "没了，别想了",
    <tconstruct:cast_custom:4> : "没了，别想了"
};

//Warnings
val warning as string[IIngredient] = {
    
};

//Compliments
val bs as string[IIngredient] = {
    
};

//Settlement
for item in toAdd{
    item.addTooltip(format.aqua(toAdd[item]));
}

for item in warning{
    item.addTooltip(format.red(warning[item]));
}

for item in bs{
    item.addTooltip(format.gold(bs[item]));
}
