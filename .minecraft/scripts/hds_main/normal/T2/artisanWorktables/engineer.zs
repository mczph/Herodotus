#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>],
    [<ore:lightPlateLead>, <magneticraft:crafting:3>, <ore:lightPlateLead>],
    [<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<magneticraft:multiblock_parts:4>)
  .create();

val worktableDef as IItemDefinition = <artisanworktables:worktable>.definition;
for i in 0 .. 15 {
    val worktable as IItemStack = worktableDef.makeStack(i);
    val type as string = worktable.name.split("\\.")[3];
    val workstump as IItemStack = itemUtils.getItem("artisanworkstumps:workstump_" ~ type);
    RecipeBuilder.get("engineer")
        .setShaped([
            [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>],
            [<ore:lightPlateLead>, workstump, <ore:lightPlateLead>],
            [<pyrotech:refractory_brick_block>, <ore:lightPlateLead>, <pyrotech:refractory_brick_block>]])
        .addOutput(worktable)
        .create();
}