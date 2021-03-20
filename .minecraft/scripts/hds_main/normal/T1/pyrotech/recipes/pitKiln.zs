#packmode normal
#priority -1

import mods.pyrotech.PitKiln;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

PitKiln.removeRecipes(<minecraft:stone>);
PitKiln.addRecipe("stone_from_cobblestone", <minecraft:stone>, <minecraft:cobblestone>, 3*60* 20, 0.6, [
    <pyrotech:material>,
    <pyrotech:rock>*2,
    <pyrotech:rock>*3
]);
}