#priority 50000

import mods.jei.JEI;
import crafttweaker.game.IGame;
import crafttweaker.mods.ILoadedMods;

val stagedModList = [
    "tinker_io", "bloodtinker", "thaumicenergistics", "thaumicaugmentation", "thaumicwonders",
    "thermaldynamics", "tconevo", "libvulpes", "thermalfoundation", "artisanautomation",
    "appliedenergistics2", "aetherworks", "advancedrocketry", "ae2wtlib", "ae2stuff",
    "thaumadditions", "thaumcraft", "enderio", "extendedcrafting", "extracells", "incorporeal",
    "industrialforegoing", "industrialrenewal", "mekanism", "nuclearcraft", "opencomputers",
    "bloodmagic", "ae2fc", "tg", "compactmachines", "draconicevolution", "efab", "embers",
    "emergingtechnology", "xnet", "thermalinnovation", "requious", "rftoolspower", "rftoolscontrol",
    "rftools", "qmd", "packagedexcrafting", "aenetvistool", "bloodarsenal", "teslathingies", "soot",
    "packagedauto"
] as string[];

for mdfk in stagedModList{
    recipes.removeByMod(mdfk);
    for mdfks in loadedMods[mdfk].items{
        mdfks.addTooltip(game.localize("herodotus.utils.currentlybanned"));
        JEI.removeAndHide(mdfks, false);
        JEI.addDescription(mdfks, game.localize("herodotus.utils.currentlybanned"));
    }
}
