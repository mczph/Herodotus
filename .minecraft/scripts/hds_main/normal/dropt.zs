#packmode normal
#priority 1000

import mods.dropt.Dropt;
import scripts.grassUtils.StringHelper;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_lib.droptlib.geometryOreDropt;

if(!isInvalid){

//Remove
Dropt.list("remove_from_grass")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2", "minecraft:double_plant:1", "minecraft:double_plant:0", "minecraft:tallgrass:1", "minecraft:tallgrass:0"])
      .matchDrops([<teslathingies:tesla_plant_seeds>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );

//Add
// TODO: remove these, since we have our own ores in hdsutils
geometryOreDropt("rhombus",
    [StringHelper.getItemName(<ore:poorOreRhombus>.materialPart),
     StringHelper.getItemName(<ore:oreRhombus>.materialPart),
     StringHelper.getItemName(<ore:denseOreRhombus>.materialPart)],
    <contenttweaker:rhombus>);
geometryOreDropt("square",
    [StringHelper.getItemName(<ore:poorOreSquare>.materialPart),
     StringHelper.getItemName(<ore:oreSquare>.materialPart),
     StringHelper.getItemName(<ore:denseOreSquare>.materialPart)],
    <contenttweaker:square>);
geometryOreDropt("spherical",
    [StringHelper.getItemName(<ore:poorOreSpherical>.materialPart),
     StringHelper.getItemName(<ore:oreSpherical>.materialPart),
     StringHelper.getItemName(<ore:denseOreSpherical>.materialPart)],
    <contenttweaker:spherical>);
}

Dropt.list("glass")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:glass", "minecraft:stained_glass"])
        .replaceStrategy("REPLACE_ITEMS")
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(10), "EXCLUDED")
            .items([<pyrotech:material:32>], Dropt.range(1, 4))
        )
    );
