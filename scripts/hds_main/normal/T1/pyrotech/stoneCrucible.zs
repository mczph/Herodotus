#packmode normal
#priority -1
import mods.pyrotech.StoneCrucible;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
StoneCrucible.addRecipe("molten_lead", <fluid:lead> * 144, <ore:orePurifiedLead>, 4800, true);
StoneCrucible.addRecipe("molten_tin", <fluid:tin> * 144, <ore:crushedOreTin>, 4800, true);
StoneCrucible.addRecipe("molten_copper", <fluid:copper> * 144, <ore:crushedOreCopper>, 4800, true);
}