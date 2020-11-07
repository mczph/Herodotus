#modloaded bathappymod
#priority 0
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


//Remove


//Add
//Add all the Botania mystic flowers into a single ore dictionary.
/*for meta in 0 .. 15 {
  <ore:botmflowers>.add(itemUtils.getItem("botania:flower", meta));
}*/
<ore:botmflowers>.addItems(<botania:flower>.definition.subItems);


//Add all the Botania double flowers into a single ore dictionary.
/*for meta in 0 .. 7 {
  <ore:botdflowers>.add(itemUtils.getItem("botania:doubleflower1", meta));
}
for meta in 0 .. 7 {
  <ore:botdflowers>.add(itemUtils.getItem("botania:doubleflower2", meta));
}*/
<ore:botdflowers>.addItems(<botania:doubleflower1>.definition.subItems);
<ore:botdflowers>.addItems(<botania:doubleflower2>.definition.subItems);