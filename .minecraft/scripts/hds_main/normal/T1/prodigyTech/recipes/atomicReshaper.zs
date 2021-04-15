#packmode normal
#priority -1

import mods.prodigytech.atomicreshaper;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){

atomicreshaper.removeAll();

atomicreshaper.addRecipe(<minecraft:cauldron>, <botania:altar>, 200);
atomicreshaper.addRecipe(<pyrotech:generated_pile_slag_iron>, <ore:nuggetIron>.materialPart * 20, 5);
}