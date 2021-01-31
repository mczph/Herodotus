#packmode normal
#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pyrotech.StoneKiln;
import scripts.hds_main.utils.modloader.isInvalid;

//Stone kiln Recipe that make Crushed ores into Shards(SRCS)
function SRCSOreProcessor(name as string, output as IItemStack, input as IIngredient){
StoneKiln.addRecipe(name~"_sk", output, input, 40*20);
}


if(!isInvalid){

}