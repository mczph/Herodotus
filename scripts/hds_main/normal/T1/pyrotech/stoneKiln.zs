#packmode normal
#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import scripts.hds_main.utils.modloader.isInvalid;

//add all kiln recipes
function allPyroKiln(name as name, output as IItemStack, input as IIngredient, time as int){
StoneKiln.addRecipe(name~"_sk", output, input, time);
BrickKiln.addRecipe(name~"_bk", output, input, time);
}

//Kiln Recipe that make Clump ores into Shards(KRCS)
function KRCSOreProcessor(name as string, output as IItemStack, input as IIngredient, fitem as IItemStack[]){
StoneKiln.addRecipe(name~"_sk_krcs", output, input, 2*60*20, 0.25, fitem);
BrickKiln.addRecipe(name~"_bk_krcs", output, input, 2*60*20*0.8);
}


if(!isInvalid){

}