#norun
#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.newBuilder("steamer_redstone", "steamer", 40)
    .addItemInput(<ore:dirtyDustRedstone>)
    .addFluidInput(<liquid:steam> * 500)
    .addItemOutput(<minecraft:redstone>)
    .build();

RecipeBuilder.newBuilder("steamer_quartz", "steamer", 40)
    .addItemInput(<ore:dirtyDustQuartz>)
    .addFluidInput(<liquid:steam> * 500)
    .addItemOutput(<ore:dustQuartz>.materialPart)
    .build();

RecipeBuilder.newBuilder("steamer_paper_0", "steamer", 120)
    .addItemInput(<minecraft:reeds>)
    .addFluidInput(<liquid:steam> * 500)
    .addItemOutput(<pyrotech:material:25>)
    .build();

RecipeBuilder.newBuilder("steamer_paper_1", "steamer", 150)
    .addItemInput(<ore:dustWood>)
    .addFluidInput(<liquid:steam> * 500)
    .addItemOutput(<pyrotech:material:25>)
    .build();
}
