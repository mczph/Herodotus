#packmode normal
#priority 0

import mods.astralsorcery.Altar;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){
val removeAltarRecipeList as string[] = [
    "astralsorcery:shaped/internal/altar/journal",
    "astralsorcery:shaped/internal/altar/lightwell",
    "astralsorcery:shaped/internal/altar/tool_linking",
    "astralsorcery:shaped/internal/altar/glasslens"
];

for remove in removeAltarRecipeList {
    Altar.removeAltarRecipe(remove);
}
}
