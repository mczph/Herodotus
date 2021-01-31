#packmode normal
#priority -1
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

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