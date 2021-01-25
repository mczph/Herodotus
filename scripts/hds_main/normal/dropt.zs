#packmode normal
#priority 0

import mods.dropt.Dropt;
import crafttweaker.item.IItemStack;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_lib.droptlib.geometryOreDropt;

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
val sbh as string = "contenttweaker:sub_block_holder_";
val mp as string = "contenttweaker:material_part:";
geometryOreDropt("rhombus", [sbh~"0:6", sbh~"0:5", sbh~"2:0"], mp~"125");
geometryOreDropt("square", [sbh~"1:4", sbh~"2:1", sbh~"0:14"], mp~"135");
geometryOreDropt("spherical", [sbh~"2:15", sbh~"2:14", sbh~"0:15"], mp~"118");
}
