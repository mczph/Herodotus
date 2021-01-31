#packmode normal
#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

//Manson worktable Recipe with Limewater and Trowel(MRLT)
function MRLTOreProcessor(name as string, output as IItemStack, input as IIngredient){
val coal as IIngredient = <ore:pieceCoal>;
RecipeBuilder.get("manson")
  .setName(name~"_lop")
  .setShapeless([input, input, input, input, input, coal, coal, coal, coal])
  .setFluid(<liquid:limewater>*1000)
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(output)
  .create();
}


if(!isInvalid){

//ore processing
RecipeBuilder.get("mason")
  .setShapeless([<ore:rhombusYellow>])
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<ore:coal>.firstItem)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:crushedOreLead>])
  .addTool(<ore:artisansSifter>, 8)
  .addOutput(<ore:orePurifiedLead>.firstItem)
  .setExtraOutputOne(<ore:rock>.firstItem, 1.0)
  .setExtraOutputTwo(<ore:rock>.firstItem, 0.5)
  .setExtraOutputThree(<ore:rock>.firstItem*2, 0.18)
  .create();

}