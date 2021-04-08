#packmode normal
#priority -1

import mods.pyrotech.Bloomery;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    Bloomery.removeWitherForgeRecipes(<pyrotech:material:33>);
    Bloomery.createBloomeryBuilder("obsidian_plain_bloomery", <pyrotech:material:33>, <ore:obsidian>, true)
        .setBurnTimeTicks(8 * 60 * 20)
        .setLangKey("tile.obsidian")
        .setBloomYield(8, 12)
        .setSlagItem(<pyrotech:slag>, 2)
        .setAnvilTiers(["ironclad"])
        .register();
}
