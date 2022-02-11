#priority 29999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ItemStages;
import scripts.grassUtils.RecipeUtils;

if (!debug) {
    addRegexLogFilter("Adding tooltip.*");
    addRegexLogFilter("Adding to item stage.*");

    val stagedModList as string[] = [
        "tinker_io", "bloodtinker",
        "thermaldynamics", "tconevo", "libvulpes", "thermalexpansion", "artisanautomation",
        "appliedenergistics2", "aetherworks", "advancedrocketry", "ae2wtlib", "ae2stuff",
        "enderio", "extendedcrafting", "incorporeal",
        "industrialforegoing", "industrialrenewal", "mekanism", "nuclearcraft", "opencomputers",
        "bloodmagic", "ae2fc", "compactmachines3", "draconicevolution", "efab", "embers",
        "emergingtechnology", "xnet", "thermalinnovation", "rftoolspower", "rftoolscontrol",
        "rftools", "qmd", "packagedexcrafting", "aenetvistool", "bloodarsenal", "teslathingies", "soot",
        "packagedauto", "actuallyadditions", "thaumicenergistics"
    ];

    val except as IIngredient[] = [
        <emergingtechnology:shreddedplastic>, <advancedrocketry:iquartzcrucible>, <ore:ingotConstructionAlloy>,
        <ore:blockConstructionAlloy>, <ore:nuggetConstructionAlloy>, <ore:gearStone>, <actuallyadditions:item_misc:10>,
        <actuallyadditions:item_rice_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_flax_seed>,
        <actuallyadditions:item_coffee_seed>, <actuallyadditions:item_water_bowl>, <actuallyadditions:item_solidified_experience>,
        <actuallyadditions:item_food:16>, <actuallyadditions:item_misc:13>, <actuallyadditions:item_coffee_beans>,
        <actuallyadditions:block_tiny_torch>, <libvulpes:coil0:4>, <rftools:redstone_transmitter_block>,
        <rftools:redstone_receiver_block>, <rftools:sequencer_block>, <rftools:counter_block>, <rftools:logic_block>,
        <rftools:invchecker_block>, <rftools:sensor_block>, <rftools:analog_block>, <rftools:digit_block>,
        <rftools:wire_block>, <rftools:timer_block>, <rftools:machine_base>
    ];
    var exceptedIngredient as IIngredient = null;

    var exceptedItemOwners as string[] = [];
    for item in except {
        for member in item.items {
            val owner as string = member.definition.owner;
            if (!(exceptedItemOwners has owner)) {
                exceptedItemOwners += owner;
            }
        }
        if (isNull(exceptedIngredient)) {
            exceptedIngredient = item;
        } else {
            exceptedIngredient |= item;
        }
    }

    for mdfk in stagedModList{
        recipes.removeByMod(mdfk);
        ItemStages.stageModItems("locked", mdfk);
        val hasExceptedItems as bool = exceptedItemOwners has mdfk;
        for mdfks in loadedMods[mdfk].items {
            if (hasExceptedItems && exceptedIngredient.matches(mdfks)) {
                continue;
            }
            mdfks.addTooltip(game.localize("herodotus.utils.currentlybanned"));
            JEI.hide(mdfks);
        }
    }
    for item in exceptedIngredient.items {
        ItemStages.removeItemStage(item);
    }

    recipes.addShaped(<libvulpes:coil0:4>, RecipeUtils.createSurround(null, <ore:ingotCopper>));
}
