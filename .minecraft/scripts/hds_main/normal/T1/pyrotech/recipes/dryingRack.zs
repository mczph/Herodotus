#packmode normal
#priority -1

import mods.pyrotech.DryingRack;
import mods.pyrotech.CrudeDryingRack;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allDryingRack;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.rAllPyroDr;

if(!isInvalid){

rAllPyroDr(<pyrotech:material:13>);
allDryingRack("dry_that_fiber", <pyrotech:material:13>, <pyrotech:material:12>, 20*20);

rAllPyroDr(<minecraft:wheat>);
allDryingRack("dry_that_straw", <pyrotech:material:2>, <minecraft:wheat>, 20*20);
}