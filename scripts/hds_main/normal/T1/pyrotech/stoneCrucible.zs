#packmode normal
#priority -1
import mods.pyrotech.StoneCrucible;
import scripts.hds_main.utils.modloader.isInvalid;

//add all crubible recipes
function allPyroCrucible(name as string, output as IFluidStack, input as IIngredient, time as int){
    StoneCrucible.addRecipe(name~"_sc", output, input, time);
    BrickCrucible.addRecipe(name~"_bc", output, input, time);
}

if(!isInvalid){
allPyroCrucible("molten_lead", <fluid:lead>*144, <ore:orePurifiedLead>, 4800, true);
allPyroCrucible("molten_bronze", <fluid:bronze>*144, <ore:dustBronze>, 20*20);
}