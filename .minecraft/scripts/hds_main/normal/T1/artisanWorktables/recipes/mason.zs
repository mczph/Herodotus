#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.artisanWorktables.awFunctions.MRLTOreProcessor;

if(!isInvalid){

val ptm5 as IItemStack = <pyrotech:material:5>;

MRLTOreProcessor("copper", <ore:clumpCopper>.materialPart*4, <ore:crushedOreCopper>);
MRLTOreProcessor("tin", <ore:clumpTin>.materialPart*4, <ore:crushedOreTin>);
//ore processing
RecipeBuilder.get("mason")
  .setShapeless([<ore:rhombusYellow>])
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<ore:coal>.materialPart)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:crushedOreLead>])
  .addTool(<ore:artisansSifter>, 8)
  .addOutput(<ore:orePurifiedLead>.materialPart)
  .setExtraOutputOne(<ore:rock>.materialPart, 1.0)
  .setExtraOutputTwo(<ore:rock>.materialPart, 0.5)
  .setExtraOutputThree(<ore:rock>.materialPart*2, 0.18)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dustBronze>],
    [<ore:dustBronze>],
    [<pyrotech:faucet_stone>]])
  .addTool(<ore:artisansBurner>, 150)
  .addOutput(<pyrotech:faucet_brick>)
  .create();

//stuff
RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:material:16>, <ore:dustSmallBronze>, <pyrotech:material:16>],
    [<ore:dustSmallBronze>, <pyrotech:material:16>, <ore:dustSmallBronze>],
    [<pyrotech:material:16>, <ore:dustSmallBronze>, <pyrotech:material:16>]])
  .addTool(<ore:artisansBurner>, 30)
  .addOutput(ptm5 * 3)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:ingotBronze>])
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(ptm5 * 4)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [ptm5, ptm5, ptm5],
    [ptm5, null, ptm5],
    [ptm5, null, ptm5]])
  .addTool(<ore:artisansTrowel>, 75)
  .setFluid(<liquid:limewater> * 1000)
  .addOutput(<tconstruct:casting>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [ptm5, null, ptm5],
    [ptm5, null, ptm5],
    [ptm5, ptm5, ptm5]])
  .addTool(<ore:artisansTrowel>, 75)
  .setFluid(<liquid:limewater> * 1000)
  .addOutput(<tconstruct:casting:1>)
  .create();

  RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:rhombus>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_rhombus>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:square>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_square>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:spherical>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_spherical>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<ore:gemFlawlessGlimmerite>])
  .addTool(<contenttweaker:sandpaper>, 5)
  .addOutput(<contenttweaker:astral_lens>)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:square>])
  .addTool(<contenttweaker:sandpaper>, 1)
  .addOutput(<contenttweaker:polished_square>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:material:12>, <pyrotech:material:12>, <pyrotech:material:12>],
    [<pyrotech:stone_bricks>, <pyrotech:material:5>, <pyrotech:stone_bricks>],
    [<pyrotech:material:5>, <pyrotech:stone_bricks>, <pyrotech:material:5>]])
  .addTool(<ore:artisansTrowel>, 10)
  .setFluid(<liquid:limewater>*1000)
  .addOutput(<artisanworkstumps:stone_basin>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<astralsorcery:blockmarbleslab>, <ore:plateIron>, <astralsorcery:blockmarbleslab>],
    [<ore:plateIron>, <ore:dustGlimmerite>, <ore:plateIron>],
    [<astralsorcery:blockmarbleslab>, <ore:plateIron>, <astralsorcery:blockmarbleslab>]])
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(<contenttweaker:starlight_frame>)
  .create();

RecipeBuilder.get("mason")
    .setShaped([
        [<ore:sphericalYellow>, <ore:sphericalYellow>],
        [<ore:sphericalYellow>, <ore:sphericalYellow>]])
    .addTool(<ore:artisansTrowel>, 10)
    .addOutput(<contenttweaker:yellow_spherical_block>)
    .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dustQuartz>, <ore:dustBronze>, <ore:dustQuartz>],
    [<tconstruct:clear_glass>, <ore:dustQuartz>, <tconstruct:clear_glass>],
    [null, <tconstruct:clear_glass>, null]])
  .addTool(<ore:artisansBurner>, 80)
  .addOutput(<hdsutils:refined_bottle>)
  .create();
}