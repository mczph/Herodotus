#packmode normal
#priority 0

import mods.dropt.Dropt;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//Remove
Dropt.list("remove_form_tall_grass")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2", "minecraft:tallgrass:1"])
      .matchDrops([<pyrotech:material:13>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );

//Add

}