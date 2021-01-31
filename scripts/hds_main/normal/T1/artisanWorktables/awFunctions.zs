#packmode normal
#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

//Manson worktable Recipe with Limewater and Trowel(MRLT)
function MRLTOreProcessor(name as string, output as IItemStack, input as IIngredient){
val coal as IIngredient = <ore:pieceCoal>;
RecipeBuilder.get("manson")
  .setName(name~"_mrlt")
  .setShapeless([input, input, input, input, input, coal, coal, coal, coal])
  .setFluid(<liquid:limewater>*1000)
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(output)
  .create();
}