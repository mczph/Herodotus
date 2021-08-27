#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
RecipeBuilder.get("mason")
  .setShapeless([<pyrotech:material:5>])
  .setFluid(<liquid:oil> * 150)
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<tconstruct:materials>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:crushedOreNickel>])
  .addTool(<ore:artisansSifter>, 8)
  .addOutput(<ore:orePurifiedNickel>.materialPart)
  .setExtraOutputOne(<ore:rock>.materialPart, 1.0)
  .setExtraOutputTwo(<ore:rock>.materialPart, 0.5)
  .setExtraOutputThree(<ore:rock>.materialPart*2, 0.18)
  .create();
}
