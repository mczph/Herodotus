#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.magneticraft.HydraulicPress;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
HydraulicPress.addRecipe(<ore:gemChippedIron>.materialPart, <ore:plateIron>.materialPart, 60, 0, true);
HydraulicPress.addRecipe(<ore:gemChippedCopper>.materialPart, <ore:plateCopper>.materialPart, 60, 0, true);
HydraulicPress.addRecipe(<ore:gemChippedTin>.materialPart, <ore:plateTin>.materialPart, 60, 0, true);
HydraulicPress.addRecipe(<ore:gemChippedNickel>.materialPart, <ore:plateNickel>.materialPart, 60, 0, true);
HydraulicPress.addRecipe(<ore:ingotNickel>.materialPart * 4, <ore:densePlateNickel>.materialPart, 120, 2, true);
HydraulicPress.addRecipe(<minecraft:quartz>, <ore:plateQuartz>.materialPart, 60, 1, true);
HydraulicPress.addRecipe(<minecraft:quartz>, <ore:lightPlateQuartz>.materialPart, 60, 0, true);
}