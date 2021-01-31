#packmode normal
#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pyrotech.StoneKiln;
import scripts.hds_main.utils.modloader.isInvalid;

//add all kiln recipes
function allPyroKiln(name as name, output as IItemStack, input as IIngredient, time as int){
StoneKiln.addRecipe(name~"_sk", output, input, time);
BrickKiln.addRecipe(name~"_bk", output, input, time);
}

//Kiln Recipe that make Crushed ores into Shards(KRCS)
function KRCSOreProcessor(name as string, output as IItemStack, input as IIngredient){
allPyroKiln(name~"_krcs", output, input, 40*20);
}


if(!isInvalid){

}