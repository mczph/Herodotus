#packmode normal
#priority -1

import mods.pyrotech.CompostBin;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

for sapling in <ore:treeSapling>.items {
    CompostBin.addRecipe(<pyrotech:mulch>, sapling);
}

}
