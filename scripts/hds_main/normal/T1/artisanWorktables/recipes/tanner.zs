#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
RecipeBuilder.get("tanner")
  .setShaped([
    [<pyrotech:material:32>, <pyrotech:material:32>, <pyrotech:material:32>],
    [<ore:paper>, <ore:slimeball>, <ore:paper>],
    [<ore:leather>, <ore:leather>, <ore:leather>]])
  .addTool(<ore:artisansTrowel>, 20)
  .addOutput(<contenttweaker:sandpaper>)
  .create();
}
