#packmode normal
#priority -1

import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//ore processing
RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusRed>])
  .addTool(<ore:artisansPliers>, 50)
  .addOutput(<ore:dirtyDustRedstone>.materialPart)
  .setExtraOutputOne(<ore:gemFlawlessRedstone>.materialPart, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedRedstone>.materialPart, 0.12)
  .setExtraOutputThree(<ore:gemChippedRedstone>.materialPart, 0.25)
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusBlue>])
  .addTool(<ore:artisansPliers>, 50)
  .addOutput(<ore:dirtyDustQuartz>.materialPart)
  .setExtraOutputOne(<ore:gemFlawlessQuartz>.materialPart, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedQuartz>.materialPart, 0.12)
  .setExtraOutputThree(<ore:gemChippedQuartz>.materialPart, 0.25)
  .create();
}