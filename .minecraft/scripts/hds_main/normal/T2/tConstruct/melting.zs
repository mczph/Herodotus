#packmode normal
#priority -1

import mods.tconstruct.Melting;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    Melting.removeRecipe(<liquid:iron>, <magneticraft:light_plates>);
    Melting.removeRecipe(<liquid:gold>, <magneticraft:light_plates:1>);
    Melting.removeRecipe(<liquid:copper>, <magneticraft:light_plates:2>);
    Melting.removeRecipe(<liquid:lead>, <magneticraft:light_plates:3>);
    Melting.removeRecipe(<liquid:tungsten>, <magneticraft:light_plates:5>);
    Melting.removeRecipe(<liquid:steel>, <magneticraft:light_plates:6>);
    Melting.addRecipe(<liquid:iron> * 144, <ore:lightPlateIron>);
    Melting.addRecipe(<liquid:gold> * 144, <ore:lightPlateGold>);
    Melting.addRecipe(<liquid:copper> * 144, <ore:lightPlateCopper>);
    Melting.addRecipe(<liquid:lead> * 144, <ore:lightPlateLead>);
    Melting.addRecipe(<liquid:tungsten> * 144, <ore:lightPlateTungsten>);
    Melting.addRecipe(<liquid:steel> * 144, <ore:lightPlateSteel>);
    Melting.addRecipe(<liquid:mercury> * 250, <ore:sphericalTierTwoYellow>, 400);
}