#packmode normal
#priority -1

import mods.pyrotech.SoakingPot;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    SoakingPot.addRecipe("brass_dust", <contenttweaker:brass_dust>, <fluid:yellow_t1> * 500, <ore:dustCopper>, true, 2 * 60 * 20);
    SoakingPot.addRecipe("glimmerite_gem", <ore:clusterGlimmerite>.firstItem, <fluid:glimmerite> * 250, <ore:blockGlass>, true, 2.5 * 60 * 20);
    SoakingPot.addRecipe("starlight_to_gl", <ore:dustGlimmerite>.firstItem, <fluid:astralsorcery.liquidstarlight> * 1000, <pyrotech:material:25>, true, 1.5 * 60 * 20);
}