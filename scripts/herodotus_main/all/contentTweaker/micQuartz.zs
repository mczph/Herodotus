#packmode normal expert
#modloaded bathappymod
#loader contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;


var micq = VanillaFactory.createBlock("mic_quartz", <blockmaterial:rock>);
micq.setLightOpacity(3);
micq.setLightValue(0);
micq.setBlockHardness(5.0);
micq.setBlockResistance(5.0);
micq.setToolClass("pickaxe");
micq.setToolLevel(2);
micq.setBlockSoundType(<soundtype:stone>);
micq.register();