#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.artisanWorktables.awFunctions.MRLTOreProcessor;

if(!isInvalid){

val ptm as IItemStack = <pyrotech:material>;
val ptm5 as IItemStack = <pyrotech:material:5>;
val ptb as IItemStack = <pyrotech:stone_bricks>;

MRLTOreProcessor("copper", <ore:clumpCopper>.materialPart*4, <ore:crushedOreCopper>);
MRLTOreProcessor("tin", <ore:clumpTin>.materialPart*4, <ore:crushedOreTin>);
//ore processing
RecipeBuilder.get("mason")
  .setShapeless([<ore:rhombusYellow>])
  .addTool(<ore:artisansBurner>, 5)
  .addOutput(<ore:coal>.materialPart)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:material:16>, <ore:blockGlass>, <pyrotech:material:16>],
    [<ore:blockGlass>, null, <ore:blockGlass>],
    [<pyrotech:material:16>, <ore:blockGlass>, <pyrotech:material:16>],])
  .addTool(<ore:artisansTrowel>, 20)
  .setFluid(<liquid:limewater> * 500)
 .addOutput(<pyrotech:stone_tank>)
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
  .addOutput(ptm5 * 6)
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

val pyrotechDevices as IItemStack[IItemStack] = {
    <pyrotech:brick_kiln> : <pyrotech:stone_kiln>,
    <pyrotech:brick_oven> : <pyrotech:stone_oven>,
    <pyrotech:brick_sawmill> : <pyrotech:stone_sawmill>,
    <pyrotech:brick_crucible> : <pyrotech:stone_crucible>
};

for brick, stone in pyrotechDevices {
    RecipeBuilder.get("mason")
      .setShaped([
        [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
        [<pyrotech:material:5>, stone, <pyrotech:material:5>],
        [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]])
      .addTool(<ore:artisansTrowel>, 20)
      .setFluid(<liquid:limewater> * 500)
      .addOutput(brick)
      .create();
}

val pyrotechStoneDeviceThings as IItemStack[IItemStack] = {
    <pyrotech:kiln_pit> : <pyrotech:stone_kiln>,
    <pyrotech:tinder> : <pyrotech:stone_oven>,
    <pyrotech:chopping_block> : <pyrotech:stone_sawmill>,
    <pyrotech:stone_tank> : <pyrotech:stone_crucible>
};

for thing, device in pyrotechStoneDeviceThings {
  RecipeBuilder.get("mason")
    .setShaped([
      [ptm, ptm, ptm],
      [ptb, thing, ptb],
      [ptb, ptb, ptb]])
    .addTool(<ore:artisansTrowel>, 20)
    .setFluid(<liquid:limewater> * 500)
    .addOutput(device)
    .create();
}

RecipeBuilder.get("mason")
  .setShaped([
    [ptm, <ore:slabStone>, ptm],
    [ptm, <pyrotech:worktable>, ptm],
    [ptm, ptm, ptm]])
  .addTool(<ore:artisansTrowel>, 20)
  .setFluid(<liquid:limewater> * 500)
  .addOutput(<pyrotech:worktable_stone>)
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
    [<astralsorcery:blockmarbleslab>, <ore:ingotIron>, <astralsorcery:blockmarbleslab>],
    [<ore:ingotIron>, <ore:dustGlimmerite>, <ore:ingotIron>],
    [<astralsorcery:blockmarbleslab>, <ore:ingotIron>, <astralsorcery:blockmarbleslab>]])
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

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dustCopper>, <pyrotech:bucket_clay_unfired>, <ore:dustCopper>],
    [null, <ore:dustCopper>, null]])
  .addTool(<ore:artisansBurner>, 90)
  .addOutput(<hdsutils:copper_bucket>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:material:16>, <pyrotech:material:16>, <pyrotech:material:16>],
    [<minecraft:redstone>, <minecraft:redstone_block>, <minecraft:flint>],
    [<pyrotech:material:16>, <pyrotech:material:16>, <pyrotech:material:16>]])
  .addTool(<ore:artisansTrowel>, 20)
  .setFluid(<liquid:limewater> * 1000)
  .addOutput(<pyrotech:igniter>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<minecraft:redstone>, <minecraft:redstone_block>, <minecraft:flint>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>]])
  .addTool(<ore:artisansTrowel>, 20)
  .setFluid(<liquid:limewater> * 1000)
  .addOutput(<pyrotech:igniter:1>)
  .create();

}
