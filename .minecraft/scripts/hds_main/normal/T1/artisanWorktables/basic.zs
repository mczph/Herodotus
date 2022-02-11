#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//other workstumps
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabStoneBricks>, <ore:slabStoneBricks>, <ore:slabStoneBricks>],
    [<minecraft:hardened_clay>, <pyrotech:worktable>, <minecraft:hardened_clay>],
    [<ore:logWood>, <pyrotech:stash>, <ore:logWood>]])
  .addTool(<ore:artisansFramingHammer>, 30)
  .addOutput(<artisanworkstumps:workstump_potter>)
  .create();

RecipeBuilder.get("basic")
    .setShaped([
	    [<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>],
	    [<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
	    [<ore:logWood>, <pyrotech:stash>, <ore:logWood>]])
    .setFluid(<liquid:limewater>*1000)
    .addTool(<ore:artisansTrowel>, 75)
    .addOutput(<artisanworkstumps:workstump_mason>)
    .create();

RecipeBuilder.get("basic")
    .setShaped([
	    [<ore:blockWool>, <ore:blockGlass>, <ore:blockWool>],
	    [<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
	    [<ore:logWood>, <pyrotech:stash>, <ore:logWood>]])
    .addTool(<ore:artisansLens>, 60)
    .addOutput(<artisanworkstumps:workstump_jeweler>)
    .create();

RecipeBuilder.get("basic")
    .setShaped([
	    [<pyrotech:material:5>, <ore:gearBronze>, <pyrotech:material:5>],
	    [<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
	    [<pyrotech:material:5>, <pyrotech:stash>, <pyrotech:material:5>]])
    .setFluid(<liquid:red_t2> * 1000)
    .addTool(<ore:artisansHammer>, 75)
    .addOutput(<artisanworkstumps:workstump_engineer>)
    .create();

RecipeBuilder.get("basic")
    .setShaped([
	    [<ore:ingotIron>, <ore:blockIron>, <ore:ingotIron>],
	    [<ore:nuggetIron>, <pyrotech:worktable>, <ore:nuggetIron>],
	    [<ore:nuggetIron>, <pyrotech:stash>, <ore:nuggetIron>]])
    .setFluid(<liquid:water>*1000)
    .addTool(<ore:artisansHammer>, 75)
    .addOutput(<artisanworkstumps:workstump_blacksmith>)
    .create();

RecipeBuilder.get("basic")
    .setShaped([
	    [<ore:blockWool>, <minecraft:book>, <ore:blockWool>],
	    [<pyrotech:material:25>, <pyrotech:worktable>, <pyrotech:material:25>],
	    [<ore:plankWood>, <pyrotech:stash>, <ore:plankWood>]])
    .setFluid(<liquid:lava> * 1000)
    .addTool(<ore:artisansAthame>, 150)
    .addOutput(<artisanworkstumps:workstump_mage>)
    .create();

//stuff

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustRedstone>, <ore:enderpearl>, <ore:dustRedstone>],
    [<minecraft:redstone_torch>, <ore:slabStone>, <minecraft:redstone_torch>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:redstone_transmitter_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustRedstone>, <ore:enderpearl>, <ore:dustRedstone>],
    [<minecraft:comparator>, <ore:slabStone>, <minecraft:comparator>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:redstone_receiver_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustRedstone>, <minecraft:redstone_torch>, <ore:dustRedstone>],
    [<minecraft:redstone_torch>, <ore:slabStone>, <minecraft:redstone_torch>],
    [<ore:dustRedstone>, <minecraft:redstone_torch>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:sequencer_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:nuggetConstructionAlloy>, <ore:gemChippedRedstone>, <ore:nuggetConstructionAlloy>],
    [<minecraft:redstone_torch>, <ore:slabStone>, <minecraft:redstone_torch>],
    [<ore:dustRedstone>, <minecraft:redstone_torch>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:counter_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:nuggetIron>, <ore:gemChippedRedstone>, <ore:nuggetIron>],
    [<minecraft:redstone_torch>, <ore:slabStone>, <minecraft:redstone_torch>],
    [<ore:dustRedstone>, <minecraft:redstone_torch>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:counter_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustRedstone>, <ore:gemChippedRedstone>, <ore:dustRedstone>],
    [<minecraft:redstone_torch>, <ore:slabStone>, <minecraft:redstone_torch>],
    [<ore:dustRedstone>, <minecraft:redstone_torch>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:timer_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustRedstone>, <minecraft:comparator>, <ore:dustRedstone>],
    [<minecraft:comparator>, <ore:slabStone>, <minecraft:comparator>],
    [<ore:dustRedstone>, <minecraft:comparator>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:logic_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustRedstone>, <ore:slabStone>, <ore:dustRedstone>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:wire_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],
    [<ore:dustRedstone>, <ore:slabStone>, <ore:dustRedstone>],
    [<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:digit_block>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustRedstone>, <ore:slabStone>, <minecraft:comparator>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<rftools:analog_block>)
  .create();

RecipeBuilder.get("basic")
    .setShaped([
	    [<pyrotech:material:12>, <pyrotech:material:12>, <pyrotech:material:12>],
	    [<ore:logWood>, <ore:plankWood>, <ore:logWood>],
	    [<ore:plankWood>, <ore:logWood>, <ore:plankWood>]])
    .addTool(<ore:artisansFramingHammer>, 10)
    .addOutput(<artisanworkstumps:log_basin>)
    .create();

RecipeBuilder.get("basic")
  .setShaped([
	[<ore:leather>, <ore:leather>, <ore:leather>],
	[<ore:string>, <pyrotech:worktable>, <ore:string>],
	[<ore:logWood>, <pyrotech:stash>, <ore:logWood>]])
  .addOutput(<artisanworkstumps:workstump_tanner>)
  .addTool(<ore:artisansFramingHammer>, 75)
.create();

RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>],
    [<pyrotech:material:20>, <ore:nuggetIron>, <pyrotech:material:20>],
    [<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>]])
  .addTool(<ore:artisansFramingHammer>, 20)
  .addOutput(<minecraft:chest>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, <pyrotech:material:20>, <ore:plankWood>],
    [<pyrotech:material:20>, <pyrotech:crate>, <pyrotech:material:20>],
    [<ore:plankWood>, <pyrotech:material:20>, <pyrotech:material:16>]])
  .addTool(<ore:artisansFramingHammer>, 20)
  .addOutput(<pyrotech:crate_stone>)
  .create();
}
