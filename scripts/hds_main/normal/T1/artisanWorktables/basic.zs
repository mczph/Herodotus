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
    [<pyrotech:stone_bricks>, <minecraft:brick_block>, <pyrotech:stone_bricks>],
    [<minecraft:planks>, <pyrotech:worktable>, <minecraft:planks>],
    [<minecraft:planks>, <pyrotech:stash>, <minecraft:planks>]])
  .setFluid(<liquid:water>*1000)
  .addTool(<artisanworktables:artisans_hammer_stone>, 1)
  .addOutput(<artisanworkstumps:workstump_mason>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:blockWool>, <ore:blockGlass>, <ore:blockWool>],
    [<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
    [<ore:logWood>, <pyrotech:stash>, <ore:logWood>]])
  .addTool(<ore:artisansLens>, 1)
  .addOutput(<artisanworkstumps:workstump_jeweler>)
  .create();
}