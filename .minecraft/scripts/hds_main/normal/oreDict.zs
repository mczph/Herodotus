#packmode normal
#priority 1500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val oreDictAddMap as IItemStack[][IOreDictEntry] = {
    <ore:pieceCoal> : [<pyrotech:material:21>, <actuallyadditions:item_misc:10>, <pyrotech:material:15>],
    <ore:logWood> : [<growthcraft_cellar:cork_log>]
};

val oreDictRemoveMap as IItemStack[][IOreDictEntry] = {
    <ore:oreIron> : [<industrialrenewal:chunk_hematite>, <industrialrenewal:orevein_hematite>]
};

//st
for oda, item in oreDictAddMap{
    oda.add(item);
}

for odr, items in oreDictRemoveMap{
    odr.removeItems(items);
}
}