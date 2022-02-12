#packmode normal
#priority -1

import mods.prodigytech.atomicreshaper;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){

atomicreshaper.removeAll();

atomicreshaper.addRecipe(<minecraft:cauldron>, <botania:altar>, 200);
atomicreshaper.addRecipe(<contenttweaker:raw_iron_block>, <ore:dustTinyIron>.materialPart * 64, 20, 750);
atomicreshaper.addRecipe(<ore:dirt>, <pyrotech:farmland_mulched>, 20);
atomicreshaper.addRecipe(<minecraft:sand>, <snad:snad>, 100);
atomicreshaper.addRecipe(<minecraft:sand:1>, <snad:snad:1>, 100);
}
