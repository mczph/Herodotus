#packmode normal
#priority 1500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val oreDictAddMap as IItemStack[][IOreDictEntry] = {
    <ore:pieceCoal> : [<pyrotech:material:21>, <actuallyadditions:item_misc:10>, <pyrotech:material:15>],
    <ore:logWood> : [<growthcraft_cellar:cork_log>],
    <ore:string> : [<pyrotech:material:14>],
    <ore:dustWood> : [<pyrotech:rock:7>],
    <ore:dustAsh> : [<pyrotech:material>],
    <ore:gearStone> : [<pyrotech:cog_stone>],
    <ore:dyeBlue> : [<ore:dustBlue>.firstItem],
    <ore:dyeRed> : [<ore:dustRed>.firstItem],
    <ore:dyeYellow> : [<ore:dustYellow>.firstItem],
    <ore:blockMercury>: [<contenttweaker:mercury_block>],
    <ore:ingotMercury> : [<thaumcraft:quicksilver>],
    <ore:nuggetMercury> : [<thaumcraft:nugget:5>],
    <ore:ingotRiverIron> : [<factorytech:ingot:5>],
    <ore:nuggetRiverIron> : [<factorytech:ore_dust:15>],
    <ore:ingotRiverCopper> : [<factorytech:ingot:6>],
    <ore:nuggetRiverCopper> : [<factorytech:ore_dust:16>],
    <ore:ingotRiverNickel> : [<factorytech:ingot:7>],
    <ore:nuggetRiverNickel> : [<factorytech:ore_dust:17>],
};

val oreDictRemoveMap as IItemStack[][IOreDictEntry] = {
    <ore:oreIron> : [<industrialrenewal:chunk_hematite>, <industrialrenewal:orevein_hematite>],
    <ore:blockGlass> : [<pyrotech:refractory_glass>]
};

//st
for oda, item in oreDictAddMap{
    oda.add(item);
}

for odr, items in oreDictRemoveMap{
    odr.removeItems(items);
}
}
