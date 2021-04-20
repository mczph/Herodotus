#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:20>, <ore:plateNickel>, <pyrotech:material:20>],
    [<ore:stickWood>, <ore:chestWood>, <ore:stickWood>],
    [<pyrotech:material:20>, <ore:stickWood>, <pyrotech:material:20>]])
  .addTool(<ore:artisansFramingHammer>, 40)
  .addOutput(<factorytech:crate>)
  .create();

}