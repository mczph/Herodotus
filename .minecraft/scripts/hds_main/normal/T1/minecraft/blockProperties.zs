#packmode normal
#priority 2
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    <minecraft:obsidian>.asBlock().definition.resistance = 8.0f;
}
