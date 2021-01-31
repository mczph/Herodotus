#packmode normal
#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.artisanWorktables.manson.MRLTOreProcessor;
import scripts.hds_main.normal.T1.pyrotech.stoneKiln.KRCSOreProcessor;

if(!isInvalid){
//copper and tin
MRLTOreProcessor("copper", <ore:clumpCopper>.firstItem, <ore:crushedOreCopper>);
MRLTOreProcessor("tin", <ore:clumpTin>.firstItem, <ore:crushedOreTin>);

KRCSOreProcessor("copper", <ore:shardCopper>.firstItem, <ore:clumpCopper>);
KRCSOreProcess("tin", <ore:shardTin>.firstItem, <ore:clumpTin>);
}