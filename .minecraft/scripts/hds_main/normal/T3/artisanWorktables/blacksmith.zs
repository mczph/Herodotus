#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateInvar>, null, <ore:plateInvar>],
    [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>],
    [<ore:plateInvar>, null, <ore:plateInvar>]])
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<modularmachinery:blockcasing:1> * 2)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateInvar>, null, <ore:plateInvar>],
    [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>],
    [<ore:plateInvar>, null, <ore:plateInvar>]])
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<modularmachinery:blockcasing:2> * 2)
  .create();
}