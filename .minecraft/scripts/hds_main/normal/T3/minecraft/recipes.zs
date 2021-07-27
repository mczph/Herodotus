#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import scripts.grassUtils.RecipeUtils;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    RecipeUtils.recipeTweak(false, <thaumicaugmentation:glass_tube>, [
        [<thaumcraft:tube>, <thaumcraft:tube>, <thaumcraft:tube>, <thaumcraft:tube>, <ore:blockGlass>]
    ]);
}