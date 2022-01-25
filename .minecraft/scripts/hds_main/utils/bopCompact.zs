#priority 30000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.dropt.Dropt;
import mods.dropt.Range;
import mods.dropt.Harvester;
import mods.pyrotech.CompactingBin;
import scripts.hds_main.utils.modloader.isInvalid;

function cbRecipe(output as IItemStack, input as IIngredient) {
    CompactingBin.addRecipe("bop_compact_"~ output.name, output, input, input.amount, true);
}

if(!isInvalid){
/*
val pickaxeHarvester as Harvester = Dropt.harvester().type("PLAYER").mainHand("WHITELIST", [], "pickaxe;2;-1");
val shovelHarvester as Harvester = Dropt.harvester().type("PLAYER").mainHand("WHITELIST", [], "shovel;2;-1");
val uRange as Range = Dropt.range(4, 6);

Dropt.list("bop_compact")
    .add(Dropt.rule()
        .replaceStrategy("ADD")
        .matchBlocks(["biomesoplenty:leaves_*:*"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(85))
            .items([<minecraft:stick>])
        )
    )
    .add(Dropt.rule()
        .matchHarvester(pickaxeHarvester)
        .matchBlocks(["biomesoplenty:grass:1"])
        .addDrop(Dropt.drop()
            .items([<pyrotech:rock>], uRange)
        )
    )
    .add(Dropt.rule()
        .matchHarvester(shovelHarvester)
        .matchBlocks()
    );

// <>

*/
}

/*
val toRules as Rule[] = [
    Dropt.rule(), Dropt.rule(), Dropt.rule(), Dropt.rule(), Dropt.rule(),
];

for rules in toRules {
    Dropt.list("bop_compact").add(rule);
}
*/
