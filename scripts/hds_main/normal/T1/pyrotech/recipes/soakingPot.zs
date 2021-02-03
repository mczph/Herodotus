#packmode normal
#priority -1

import mods.pyrotech.SoakingPot;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    SoakingPot.addRecipe("brass_dust", <contenttweaker:brass_dust>, <fluid:alubrass> * 500, <ore:dustCopper>, true, 2 * 60 * 20);
}