#packmode normal
#priority -1

import mods.prodigytech.atomicreshaper;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){

atomicreshaper.removeAll();

atomicreshaper.addRecipe(<minecraft:cauldron>, <botania:altar>, 200);
atomicreshaper.addRecipe(<contenttweaker:raw_iron>, <ore:dustIron>.materialPart * 10, 50, 1000);
}