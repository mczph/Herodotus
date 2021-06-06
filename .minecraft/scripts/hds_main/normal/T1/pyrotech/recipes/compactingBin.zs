#packmode normal
#priority -1

import mods.pyrotech.CompactingBin;
import mods.pyrotech.MechanicalCompactor;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

CompactingBin.addRecipe("coal_block", <minecraft:coal_block>, <minecraft:coal>, 9);
CompactingBin.addRecipe("iron_slag_0", <pyrotech:generated_pile_slag_iron>, <ore:crushedOreIron>, 9);
MechanicalCompactor.addRecipe("iron_slag_0_machinery", <pyrotech:generated_pile_slag_iron>, <ore:crushedOreIron>, 9);
MechanicalCompactor.addRecipe("coal_block_machinery", <minecraft:coal_block>, <minecraft:coal>, 9);
}