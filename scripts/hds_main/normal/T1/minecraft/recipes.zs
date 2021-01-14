import scripts.grassUtils.RecipeUtils;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeUtils.recipeTweak(true, <pyrotech:crude_axe>,[
    [<tconstruct:axe_head>.withTag({Material: "stone"}),<pyrotech:material:12>],
    [null,<minecraft:stick>]
]);

}