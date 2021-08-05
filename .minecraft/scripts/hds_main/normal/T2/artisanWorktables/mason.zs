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

//<pyrotech:brick_tank>

RecipeBuilder.get("mason")
 .setShaped([
   [<pyrotech:material:5>, <ore:blockGlass>, <pyrotech:material:5>],
   [<ore:blockGlass>, null, <ore:blockGlass>],
   [<pyrotech:material:5>, <ore:blockGlass>, <pyrotech:material:5>]])
 .addTool(<ore:artisansTrowel>, 20)
 .setFluid(<liquid:limewater> * 500)
 .addOutput(<pyrotech:refractory_glass>)
 .create();

RecipeBuilder.get("mason")
 .setShaped([
   [<pyrotech:material:5>, <pyrotech:refractory_glass>, <pyrotech:material:5>],
   [<pyrotech:refractory_glass>, null, <pyrotech:refractory_glass>],
   [<pyrotech:material:5>, <pyrotech:refractory_glass>, <pyrotech:material:5>]])
 .addTool(<ore:artisansTrowel>, 20)
 .setFluid(<liquid:limewater> * 500)
 .addOutput(<pyrotech:refractory_glass>)
 .create();
}
