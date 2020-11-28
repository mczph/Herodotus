#packmode normal expert
#modloaded bathappymod
#loader contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;


var ifmf = VanillaFactory.createBlock("if_machine_frame", <blockmaterial:rock>);
ifmf.setBlockHardness(5.0);
ifmf.setBlockResistance(5.0);
ifmf.setToolClass("pickaxe");
ifmf.setToolLevel(1);
ifmf.setBlockSoundType(<soundtype:stone>);
ifmf.register();