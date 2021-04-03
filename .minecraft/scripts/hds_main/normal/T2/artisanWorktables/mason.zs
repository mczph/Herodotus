#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
RecipeBuilder.get("mason")
  .setShapeless([<pyrotech:material:5>])
  .setFluid(<liquid:oil> * 50)
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<tconstruct:materials>)
  .create();
}