#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:20>, <ore:plateQuartz>, <pyrotech:material:20>],
    [<ore:stickWood>, <ore:chestWood>, <ore:stickWood>],
    [<pyrotech:material:20>, <ore:stickWood>, <pyrotech:material:20>]])
  .addTool(<ore:artisansFramingHammer>, 40)
  .addOutput(<factorytech:crate>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plasticLightBlue>, <ore:plasticLightBlue>, <ore:plasticLightBlue>],
    [<ore:paper>, <pyrotech:worktable>, <ore:paper>],
    [<ore:logWood>, <pyrotech:stash>, <ore:logWood>]])
  .addTool(<ore:artisansFramingHammer>, 40)
  .addOutput(<artisanworkstumps:workstump_designer>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
      [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>],
      [<ore:lightPlateLead>, <artisanworkstumps:workstump_engineer>, <ore:lightPlateLead>],
      [<pyrotech:refractory_brick_block>, <ore:lightPlateLead>, <pyrotech:refractory_brick_block>]])
  .addOutput(<artisanworktables:worktable:6>)
  .addTool(<ore:artisansSpanner>, 50)
  .create();
}
