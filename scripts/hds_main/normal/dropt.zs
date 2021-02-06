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
Dropt.list("remove_form_tall_grass")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2", "minecraft:tallgrass:1"])
      .matchDrops([<pyrotech:material:13>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );


//Add

geometryOreDropt("rhombus",
    [StringHelper.getItemName(<ore:poorOreRhombus>.firstItem),
     StringHelper.getItemName(<ore:oreRhombus>.firstItem),
     StringHelper.getItemName(<ore:denseOreRhombus>.firstItem)],
    <contenttweaker:rhombus>);
geometryOreDropt("square",
    [StringHelper.getItemName(<ore:poorOreSquare>.firstItem),
     StringHelper.getItemName(<ore:oreSquare>.firstItem),
     StringHelper.getItemName(<ore:denseOreSquare>.firstItem)],
    <contenttweaker:square>);
geometryOreDropt("spherical",
    [StringHelper.getItemName(<ore:poorOreSpherical>.firstItem),
     StringHelper.getItemName(<ore:oreSpherical>.firstItem),
     StringHelper.getItemName(<ore:denseOreSpherical>.firstItem)],
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

Dropt.list("glow_flower")
    .add(Dropt.rule()
        .matchBlocks(["astralsorcery:blockcustomflower"])
        .replaceStrategy("REPLACE_ITEMS")
        .addDrop(Dropt.drop()
            .items([<astralsorcery:blockcustomflower>], Dropt.range(0, 2))
        )
    );
