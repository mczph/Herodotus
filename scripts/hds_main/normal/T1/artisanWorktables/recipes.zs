#packmode normal
#priority -1
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("mason")
  .setShapeless([<ore:rhombusYellow>])
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<minecraft:coal>)
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusRed>])
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<ore:dirtyDustRedstone>.firstItem)
  .setExtraOutputOne(<ore:gemFlawlessRedstone>.firstItem, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedRedstone>.firstItem, 0.12)
  .setExtraOutputThree(<ore:gemChippedRedstone>.firstItem, 0.25)
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusBlue>])
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(<ore:dirtyDustQuartz>.firstItem)
  .setExtraOutputOne(<ore:gemFlawlessQuartz>.firstItem, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedQuartz>.firstItem, 0.12)
  .setExtraOutputThree(<ore:gemChippedQuartz>.firstItem, 0.25)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:crushedOreLead>])
  .addTool(<ore:artisansSifter>, 8)
  .addOutput(<ore:orePurifiedLead>.firstItem)
  .setExtraOutputOne(<pyrotech:rock> * 1, 1.0)
  .setExtraOutputTwo(<pyrotech:rock> * 1, 0.5)
  .setExtraOutputThree(<pyrotech:rock> * 2, 0.18)
  .create();