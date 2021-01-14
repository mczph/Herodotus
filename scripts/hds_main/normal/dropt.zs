import mods.dropt.Dropt;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//Removes
Dropt.list("remove_form_tall_grass")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2"])
      .matchDrops([<pyrotech:material:13>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );

//Adds

}