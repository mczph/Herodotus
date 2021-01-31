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

RecipeBuilder.get("mason")
  .setShaped([
    [null, <ore:dustBronze>, null],
    [null, <ore:dustBronze>, null],
    [null, <pyrotech:faucet_stone>, null]])
  .addTool(<ore:artisansBurner>, 150)
  .addOutput(<pyrotech:faucet_brick>)
  .create();

//stuff
RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>],
    [<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
    [<ore:logWood>, <pyrotech:stash>, <ore:logWood>]])
  .setFluid(<liquid:limewater>*1000)
  .addTool(<ore:artisansTrowel>, 75)
  .addOutput(<artisanworkstumps:workstump_mason>)
  .create();
}