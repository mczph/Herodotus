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

//Stone kiln Recipe that make Crushed ores into Shards(SRCS)
function SRCSOreProcessor(name as string, output as IItemStack, input as IIngredient){
allPyroKiln(name~"_srcs", output, input, 40*20);
}


if(!isInvalid){

}