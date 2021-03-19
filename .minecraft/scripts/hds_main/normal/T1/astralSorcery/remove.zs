#packmode normal
#priority 0

import mods.astralsorcery.Altar;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking");
}
