#packmode normal
#priority -1

import mods.pyrotech.Bloomery;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    Bloomery.removeAllBloomeryRecipes();
    Bloomery.removeAllWitherForgeRecipes();

    Bloomery.createBloomeryBuilder("obsidian_plain_bloomery", <pyrotech:material:33>, <ore:obsidian>)
        .setBurnTimeTicks(8 * 60 * 20)
        .setLangKey("tile.obsidian")
        .setBloomYield(8, 12)
        .setSlagItem(<pyrotech:slag>, 2)
        .setAnvilTiers(["ironclad"])
        .register();

    Bloomery.createBloomeryBuilder("iron", <ore:ingotIron>.materialPart, <contenttweaker:raw_iron_block>)
        .setBurnTimeTicks(10 * 60 * 20)
        .setLangKey("material.iron.name")
        .setBloomYield(9, 10)
        .setSlagItem(<pyrotech:generated_slag_iron>, 2)
        .setAnvilTiers(["ironclad"])
        .register();


    Bloomery.createWitherForgeBuilder("obsidian_plain_bloomery_wither", <pyrotech:material:33>, <ore:obsidian>)
        .setBurnTimeTicks(8 * 60 * 20)
        .setLangKey("tile.obsidian")
        .setBloomYield(8, 12)
        .setSlagItem(<pyrotech:slag>, 2)
        .setAnvilTiers(["ironclad"])
        .register();

    Bloomery.createWitherForgeBuilder("iron_wither", <ore:ingotIron>.materialPart, <contenttweaker:raw_iron_block>)
        .setBurnTimeTicks(10 * 60 * 20 + 20 * 60 *2)
        .setLangKey("material.iron.name")
        .setBloomYield(9, 10)
        .setSlagItem(<pyrotech:generated_slag_iron>, 2)
        .setAnvilTiers(["ironclad"])
        .register();
}
