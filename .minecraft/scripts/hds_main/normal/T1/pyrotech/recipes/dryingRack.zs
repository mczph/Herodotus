#packmode normal
#priority -1

import mods.pyrotech.DryingRack;
import mods.pyroteh.CrudeDryingRack;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allDryingRack;
import scripts.hds_main.normal.T1.pyroteh.ptFunctions.rAllPyroDr;

if(!isInvalid){

rAllPyroDr(<pyroteh:material:13>);
allDryingRack("dry_that_fiber", <pyrotech:material:13>, <pyrotech:material:12>, 30*20);
}