#packmode normal
#priority -1

import mods.pyrotech.SoakingPot;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

SoakingPot.addRecipe("brass_dust", <contenttweaker:brass_dust>, <fluid:yellow_t1> * 500, <ore:dustCopper>, true, 2 * 60 * 20);
SoakingPot.addRecipe("glimmerite_gem", <ore:clusterGlimmerite>.materialPart, <fluid:glimmerite> * 250, <ore:blockGlass>, true, 2.5 * 60 * 20);
SoakingPot.addRecipe("starlight_to_gl", <ore:dustGlimmerite>.materialPart, <fluid:astralsorcery.liquidstarlight> * 50, <pyrotech:material:25>, true, 45 * 20);
SoakingPot.addRecipe("quartz_dirty_wash", <ore:dustQuartz>.materialPart, <fluid:water> * 250, <ore:dirtyDustQuartz>, 20 * 60);
SoakingPot.addRecipe("redstone_dirty_wash", <ore:dustRedstone>.materialPart, <fluid:water> * 250, <ore:dirtyDustRedstone>, 20 * 60);
}