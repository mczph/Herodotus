#packmode normal
#priority 2
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    <minecraft:obsidian>.asBlock().definition.resistance = 8.0f;
    <minecraft:iron_pickaxe>.maxDamage = 300;
    <minecraft:iron_shovel>.maxDamage = 300;
    <minecraft:iron_axe>.maxDamage = 300;
    <minecraft:iron_sword>.maxDamage = 300;
    <minecraft:iron_hoe>.maxDamage = 300;
    <prodigytech:crystal_cutter>.maxDamage = 300;
    <astralsorcery:blockcustomore>.asBlock().definition.setHarvestLevel("pickaxe", 1);
    <entity:minecraft:zombie>.removeDrop(<minecraft:iron_ingot>);
    <entity:minecraft:zombie>.removeDrop(<minecraft:iron_ore>);
}
