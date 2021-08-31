#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pyrotech.PitKiln;
import scripts.grassUtils.StringHelper;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.uPyroKilns;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.uPyroTerra;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

uPyroKilns("kiln_stone", <minecraft:stone>, <minecraft:cobblestone>, <pyrotech:rock>, 35*20);
uPyroKilns("kiln_granite", <minecraft:stone:1>, <pyrotech:cobblestone:2>, <pyrotech:rock:1>, 40*20);
uPyroKilns("kiln_diorite", <minecraft:stone:3>, <pyrotech:cobblestone:1>, <pyrotech:rock:2>, 40*20);
uPyroKilns("kiln_andesite", <minecraft:stone:5>, <pyrotech:cobblestone>, <pyrotech:rock:3>, 40*20);
uPyroKilns("kiln_lime", <pyrotech:material:22>, <ore:dustLimestone>, <pyrotech:material>, 30*20);
uPyroKilns("kiln_claybucket", <pyrotech:bucket_clay>, <pyrotech:bucket_clay_unfired>, <pyrotech:material:17>, 20*20);

val terraProducts as IIngredient[IItemStack] = {
    <pyrotech:bucket_clay> : <pyrotech:bucket_clay_unfired>,
    <minecraft:hardened_clay> : <ore:blockClay>,
    <minecraft:brick> : <pyrotech:material:24>,
    <pyrotech:clay_shears> : <pyrotech:unfired_clay_shears>,
    <minecraft:stained_hardened_clay> : <minecraft:white_glazed_terracotta>,
    <minecraft:stained_hardened_clay:1> : <minecraft:orange_glazed_terracotta>,
    <minecraft:stained_hardened_clay:2> : <minecraft:magenta_glazed_terracotta>,
    <minecraft:stained_hardened_clay:3> : <minecraft:light_blue_glazed_terracotta>,
    <minecraft:stained_hardened_clay:4> : <minecraft:yellow_glazed_terracotta>,
    <minecraft:stained_hardened_clay:5> : <minecraft:lime_glazed_terracotta>,
    <minecraft:stained_hardened_clay:6> : <minecraft:pink_glazed_terracotta>,
    <minecraft:stained_hardened_clay:7> : <minecraft:gray_glazed_terracotta>,
    <minecraft:stained_hardened_clay:8> : <minecraft:silver_glazed_terracotta>,
    <minecraft:stained_hardened_clay:9> : <minecraft:cyan_glazed_terracotta>,
    <minecraft:stained_hardened_clay:10> : <minecraft:purple_glazed_terracotta>,
    <minecraft:stained_hardened_clay:11> : <minecraft:blue_glazed_terracotta>,
    <minecraft:stained_hardened_clay:12> : <minecraft:brown_glazed_terracotta>,
    <minecraft:stained_hardened_clay:13> : <minecraft:green_glazed_terracotta>,
    <minecraft:stained_hardened_clay:14> : <minecraft:red_glazed_terracotta>,
    <minecraft:stained_hardened_clay:15> : <minecraft:black_glazed_terracotta>
};

for item in terraProducts{
    var recipeName as string = StringHelper.getItemNameWithUnderline(item);
    uPyroTerra(recipeName, item, terraProducts[item]);
}
}
