#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.pyrotech.SoakingPot;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

// remove

var toRemove as IIngredient[] = [
    <pyrotech:planks_tarred>,
    <pyrotech:material:23>,
    <pyrotech:material:26>,
    <pyrotech:wool_tarred>,
    <pyrotech:material:30>,
    <pyrotech:wood_tar_block>

];

for remove in toRemove {
    SoakingPot.removeRecipes(remove);
}


// add

SoakingPot.addRecipe("plank_tarred_fixed", <pyrotech:planks_tarred>, <liquid:wood_tar> * 125, <ore:plankWood>, 20 * 60);
SoakingPot.addRecipe("board_tarred_fixed", <pyrotech:material:23>, <liquid:wood_tar> * 50, <pyrotech:material:20>, 20 * 30);
SoakingPot.addRecipe("twine_fixed", <pyrotech:material:26>, <liquid:wood_tar> * 125, <pyrotech:material:14>, 20 * 40);
SoakingPot.addRecipe("wool_tarred_fixed", <pyrotech:wool_tarred>, <liquid:wood_tar> * 250, <ore:blockWool>, 20 * 50);
SoakingPot.addRecipe("kindling_tarred_fixed", <pyrotech:material:30>, <liquid:wood_tar> * 125, <pyrotech:material:29>, 20 * 60);
SoakingPot.addRecipe("wood_tar_block_fixed", <pyrotech:wood_tar_block>, <liquid:wood_tar> * 1000, <pyrotech:thatch>, 20 * 60);


SoakingPot.addRecipe("brass_dust", <contenttweaker:brass_dust>, <fluid:yellow_t1> * 500, <ore:dustCopper>, true, 2 * 60 * 20);
SoakingPot.addRecipe("glimmerite_gem", <ore:clusterGlimmerite>.materialPart, <fluid:glimmerite> * 250, <ore:blockGlass>, true, 2.5 * 60 * 20);
SoakingPot.addRecipe("starlight_to_gl", <ore:dustGlimmerite>.materialPart, <fluid:astralsorcery.liquidstarlight> * 50, <pyrotech:material:25>, true, 45 * 20);
SoakingPot.addRecipe("quartz_dirty_wash", <ore:dustQuartz>.materialPart, <fluid:water> * 250, <ore:dirtyDustQuartz>, 20 * 60);
SoakingPot.addRecipe("redstone_dirty_wash", <ore:dustRedstone>.materialPart, <fluid:water> * 250, <ore:dirtyDustRedstone>, 20 * 60);
SoakingPot.addRecipe("lithium", <hdsutils:lithium_amalgam>, <fluid:mercury> * 250, <ore:sphericalRed>, 20 * 60);
}
