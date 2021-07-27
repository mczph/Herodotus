#packmode normal
#priority -1

import crafttweaker.game.IGame;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pyrotech.Worktable;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

val thaums as string[] = [
    "thaumcraft", "thaumadditions", "thaumicaugmentation",
    "tg", "thaumictinkerer", "thaumicwonders"
];

for mod in thaums{
    for item in loadedMods[mod].items {
        Worktable.removeRecipes(item);
    }
}
}
