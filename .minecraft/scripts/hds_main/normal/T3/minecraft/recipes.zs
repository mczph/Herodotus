#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import scripts.grassUtils.RecipeUtils;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    RecipeUtils.recipeTweak(false, <thaumicaugmentation:glass_tube> * 4, [
        [<thaumcraft:tube>, <thaumcraft:tube>, <thaumcraft:tube>, <thaumcraft:tube>, <ore:blockGlass>]
    ]);
    RecipeUtils.recipeTweak(false, <thaumcraft:tube_restrict>, [
        [<thaumcraft:tube>, <ore:string>]
    ]);
    RecipeUtils.recipeTweak(false, <thaumcraft:tube_oneway>, [
        [<thaumcraft:tube>, <ore:dustBlue>]
    ]);
    RecipeUtils.recipeTweak(false, <thaumcraft:tube_filter>, [
        [<thaumcraft:tube>, <thaumcraft:filter>]
    ]);
    RecipeUtils.recipeTweak(false, <thaumcraft:tube_valve>, [
        [<thaumcraft:tube>, <ore:plateBrass>]
    ]);

    RecipeUtils.recipeTweak(true, <thaumadditions:thaumic_lectern>, [
        [<ore:ingotThaumium>, <ore:artisansGrimoire>, <ore:ingotThaumium>],
        [<thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>],
        [null, <thaumcraft:slab_greatwood>, null]
    ]);
    RecipeUtils.recipeTweak(true, <torchmaster:mega_torch>, [
        [<ore:torch>, <ore:torch>, <ore:torch>],
        [<ore:plasticBlue>, <ore:logWood>, <ore:plasticBlue>],
        [<ore:ingotGold>, <ore:logWood>, <ore:ingotGold>]
    ]);
}
