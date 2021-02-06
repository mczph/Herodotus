#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateCopper>, null, <ore:plateCopper>],
    [null, <ore:plateCopper>, null]])
  .addTool(<ore:artisansHammer>, 12)
  .addOutput(<hdsutils:copper_bucket>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, null, <ore:plateIron>],
    [null, <ore:plateIron>, null]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<minecraft:bucket>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]])
  .addTool(<ore:artisansHammer>, 24)
  .addOutput(<minecraft:cauldron>)
  .create();