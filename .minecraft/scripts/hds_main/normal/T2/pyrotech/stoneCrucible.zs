#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroCrucible;

if(!isInvalid){
allPyroCrucible("oil", <fluid:oil> * 100, <contenttweaker:black_dye>, 40 * 20);
allPyroCrucible("molten_gel", <fluid:molten_gel> * 250, <contenttweaker:impure_gel>, 80 * 20);
}
