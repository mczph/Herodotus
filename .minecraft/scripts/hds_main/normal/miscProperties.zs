#packmode normal
#priority 2

import scripts.hds_main.utils.modloader.isInvalid;
import mods.jei.JEI;

if (!isInvalid) {
    JEI.hideCategory("pneumaticcraft.amadron_trade");
    <minecraft:obsidian>.asBlock().definition.resistance = 8.0f;
    <minecraft:iron_pickaxe>.maxDamage = 300;
    <minecraft:iron_shovel>.maxDamage = 300;
    <minecraft:iron_axe>.maxDamage = 300;
    <minecraft:iron_sword>.maxDamage = 300;
    <minecraft:iron_hoe>.maxDamage = 300;
    <prodigytech:crystal_cutter>.maxDamage = 300;
    <pyrotech:obsidian_pickaxe>.maxDamage = 350;
    <pyrotech:obsidian_shovel>.maxDamage = 350;
    <pyrotech:obsidian_axe>.maxDamage = 350;
    <mekanismtools:ironpaxel>.maxDamage = 1000;
    <mekanismtools:obsidianpaxel>.maxDamage = 1500;
    <astralsorcery:blockcustomore>.asBlock().definition.setHarvestLevel("pickaxe", 1);
    <entity:minecraft:zombie_pigman>.removeDrop(<minecraft:gold_nugget>);
    <entity:minecraft:zombie>.removeDrop(<minecraft:iron_ingot>);
    <entity:minecraft:zombie>.removeDrop(<minecraft:iron_ore>);
    <entity:srparasites:pri_bolster>.addDrop(<contenttweaker:broken_ootheca> % 35);
}
