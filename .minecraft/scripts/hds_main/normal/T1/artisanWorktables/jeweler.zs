#packmode normal
#priority -1

import scripts.hds_lib.crtlib;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//ore processing
RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusRed>])
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(<ore:dirtyDustRedstone>.materialPart)
  .setExtraOutputOne(<ore:gemFlawlessRedstone>.materialPart, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedRedstone>.materialPart, 0.12)
  .setExtraOutputThree(<ore:gemChippedRedstone>.materialPart, 0.25)
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<ore:rhombusBlue>])
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(<ore:dirtyDustQuartz>.materialPart)
  .setExtraOutputOne(<ore:gemFlawlessQuartz>.materialPart, 0.05)
  .setExtraOutputTwo(<ore:gemFlawedQuartz>.materialPart, 0.12)
  .setExtraOutputThree(<ore:gemChippedQuartz>.materialPart, 0.25)
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<ore:clusterGlimmerite>])
  .addTool(<ore:artisansGemCutter>, 20)
  .addOutput(<ore:gemChippedGlimmerite>.materialPart, 3)
  .addOutput(<ore:gemFlawedGlimmerite>.materialPart, 3)
  .addOutput(<ore:gemFlawlessGlimmerite>.materialPart, 2)
  .create();

for shape in crtlib.shapes {
  RecipeBuilder.get("jeweler")
    .setShapeless([itemUtils.getItem("contenttweaker:" ~ shape)])
    .addTool(<ore:artisansGemCutter>, 2)
    .addOutput(itemUtils.getItem("contenttweaker:polished_" ~ shape))
    .create();
}

RecipeBuilder.get("jeweler")
  .setShapeless([<ore:gemFlawlessGlimmerite>])
  .addTool(<ore:artisansGemCutter>, 4)
  .addOutput(<contenttweaker:astral_lens>)
  .create();

}
