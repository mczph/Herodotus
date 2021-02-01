#packmode normal
#priority -1

import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.artisanWorktables.awFunctions.MRLTOreProcessor;

if(!isInvalid){

val ptm5 as IItemStack = <pyrotech:material:5>;


MRLTOreProcessor("copper", <ore:clumpCopper>.firstItem*4, <ore:crushedOreCopper>);
MRLTOreProcessor("tin", <ore:clumpTin>.firstItem*4, <ore:crushedOreTin>);
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
    [<ore:tinyDustBronze>, <ore:tinyDustBronze>, <ore:tinyDustBronze>],
    [<ore:tinyDustBronze>, <pyrotech:stone_bricks>, <ore:tinyDustBronze>],
    [<ore:tinyDustBronze>, <ore:tinyDustBronze>, <ore:tinyDustBronze>]])
  .addTool(<ore:artisansBurner>, 30)
  .addOutput(ptm5)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [ptm5, ptm5, ptm5],
    [ptm5, null, ptm5],
    [ptm5, null, ptm5]])
  .addTool(<ore:artisansTrowel>, 75)
  .addOutput(<tconstruct:casting>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [ptm5, null, ptm5],
    [ptm5, null, ptm5],
    [ptm5, ptm5, ptm5]])
  .addTool(<ore:artisansTrowel>, 75)
  .addOutput(<tconstruct:casting:1>)
  .create();
}

