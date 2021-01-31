#packmode normal
#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
val oreDictMap as IOreDictEntry[IItemStack] = {
    <ore:pieceCoal> : <pyrotech:material:21>,
    <ore:pieceCoal> : <actuallyadditions:item_misc:10>
};

//st
for od, item in oreDictMap{
    od.add(item);
}
}