#priority 50000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ItemStages;

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
        <ore:blockConstructionAlloy>, <ore:nuggetConstructionAlloy>, <ore:gearStone>
    ];
    var exceptedIngredient as IIngredient = null;

    var exceptedItemOwners as string[] = [];
    for item in except {
        val owner as string = item.definition.owner;
        if (!(exceptedItemOwners has owner)) {
            exceptedItemOwners += owner;
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
}
