#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.magneticraft.HydraulicPress;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
HydraulicPress.addRecipe(<ore:gemChippedIron>, <ore:plateIron>.materialPart, 60, 0);
HydraulicPress.addRecipe(<ore:gemChippedCopper>, <ore:plateCopper>.materialPart, 60, 0);
HydraulicPress.addRecipe(<ore:gemChippedTin>, <ore:plateTin>.materialPart, 60, 0);
HydraulicPress.addRecipe(<ore:gemChippedNickel>, <ore:plateNickel>.materialPart, 60, 0);
HydraulicPress.addRecipe(<ore:ingotNickel> * 4, <ore:densePlateNickel>.materialPart, 120, 2);
HydraulicPress.addRecipe(<minecraft:quartz>, <ore:plateQuartz>.materialPart, 60, 1);
HydraulicPress.addRecipe(<minecraft:quartz>, <ore:lightPlateQuartz>.materialPart, 60, 0);
HydraulicPress.addRecipe(<ore:ingotBrass>, <ore:plateBrass>.materialPart, 60, 1);
HydraulicPress.addRecipe(<ore:ingotThaumium>, <ore:plateThaumium>.materialPart, 60, 1);
}
