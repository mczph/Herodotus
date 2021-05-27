#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {

RecipeBuilder.get("tanner")
  .setShaped([
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<minecraft:carpet:*>, <minecraft:carpet:*>, <minecraft:carpet:*>],
    [<ore:paper>, <ore:paper>, <ore:paper>]])
  .addTool(<ore:artisansRazor>, 20)
  .addOutput(<astralsorcery:itemcraftingcomponent:5>)
  .create();
}
