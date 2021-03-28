#packmode normal
#priority -1

import mods.pyrotech.PitKiln;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.uPyroKilns;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

uPyroKilns("kiln_stone", <minecraft:stone>, <minecraft:cobblestone>, <pyrotech:rock>, 35*20);
uPyroKilns("kiln_granite", <minecraft:stone:1>, <pyrotech:cobblestone:2>, <pyrotech:rock:1>, 40*20);
uPyroKilns("kiln_diorite", <minecraft:stone:3>, <pyrotech:cobblestone:1>, <pyrotech:rock:2>, 40*20);
uPyroKilns("kiln_andesite", <minecraft:stone:5>, <pyrotech:cobblestone>, <pyrotech:rock:3>, 40*20);
uPyroKilns("kiln_lime", <pyrotech:material:22>, <ore:dustLimestone>, 40*20);
uPyroKilns("kiln_claybucket", <pyrotech:bucket_clay>, <pyrotech:bucket_clay_unfired>, <pyrotech:material:17>, 20*20);
}