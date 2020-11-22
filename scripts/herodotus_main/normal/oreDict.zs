#packmode normal
#modloaded bathappymod
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


//Remove


//Add

//Add all the Botania mystic flowers into a single ore dictionary.
<ore:botmflowers>.addItems(<botania:flower>.definition.subItems);

//Add all the Botania double flowers into a single ore dictionary.
<ore:botdflowers>.addItems(<botania:doubleflower1>.definition.subItems);
<ore:botdflowers>.addItems(<botania:doubleflower2>.definition.subItems);