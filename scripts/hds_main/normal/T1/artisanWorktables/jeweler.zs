#packmode normal
#priority -1
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//ore processing
RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusRed>])
  .addTool(<ore:artisansPliers>, 150)
  .addOutput(<ore:dirtyDustRedstone>.firstItem)
  .setExtraOutputOne(<ore:gemFlawlessRedstone>.firstItem, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedRedstone>.firstItem, 0.12)
  .setExtraOutputThree(<ore:gemChippedRedstone>.firstItem, 0.25)
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusBlue>])
  .addTool(<ore:artisansPliers>, 150)
  .addOutput(<ore:dirtyDustQuartz>.firstItem)
  .setExtraOutputOne(<ore:gemFlawlessQuartz>.firstItem, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedQuartz>.firstItem, 0.12)
  .setExtraOutputThree(<ore:gemChippedQuartz>.firstItem, 0.25)
  .create();
}