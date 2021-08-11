#packmode normal
#priority -1

import mods.pyrotech.StoneOven;
import mods.pyrotech.BrickOven;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.uPyroOvens;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroOvens;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
uPyroOvens("mat2", <pyrotech:material:2>, <minecraft:wheat>);
uPyroOvens("mat12", <pyrotech:material:12>, <pyrotech:material:13>);
allPyroOvens("mat12_1", <pyrotech:material:12>, <pyrotech:material:13>);
}
