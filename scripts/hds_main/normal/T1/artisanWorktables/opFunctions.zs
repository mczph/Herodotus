#packmode normal
#priority 1000
import mods.artisanworktables.builder.RecipeBuilder;


//Manson worktable Recipe with Limewater and Trowel(MRLT)
function MRLTOreProcessor(name as string, output as IItemStack, input as IIngredient[]){
RecipeBuilder.get("manson")
  .setName(name~"lop")
  .setShapeless(input)
  .setFluid(<liquid:limewater> * 250)
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(output)
  .create();
}