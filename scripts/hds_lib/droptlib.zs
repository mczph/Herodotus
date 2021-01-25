#packmode normal
#priority 2001

import mods.dropt.Dropt;
import crafttweaker.item.IItemStack;

//the FOH functions
function fortunePoorOreHelper(name as string, matchBlocksList as string[], dropItemsList as IItemStack[]){
Dropt.list(name)
  .add(Dropt.rule()
      .matchBlocks(matchBlocksList)
      .addDrop(Dropt.drop()
          .items(dropItemsList, Dropt.range(0, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "ANY", 1)
          .items(dropItemsList, Dropt.range(1, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "ANY", 2)
          .items(dropItemsList, Dropt.range(1, 3))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "ANY", 3)
          .items(dropItemsList, Dropt.range(2, 3))
      )
  );
}

function fortuneOreHelper(name as string, matchBlocksList as string[], dropItemsList as IItemStack[]){
Dropt.list(name)
  .add(Dropt.rule()
      .matchBlocks(matchBlocksList)
      .addDrop(Dropt.drop()
          .items(dropItemsList, Dropt.range(1, 3))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "ANY", 1)
          .items(dropItemsList, Dropt.range(2, 3))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "ANY", 2)
          .items(dropItemsList, Dropt.range(2, 4))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "ANY", 3)
          .items(dropItemsList, Dropt.range(3, 4))
      )
  );
}

function fortuneDenseOreHelper(name as string, matchBlocksList as string[], dropItemsList as IItemStack[]){
Dropt.list(name)
  .add(Dropt.rule()
      .matchBlocks(matchBlocksList)
      .addDrop(Dropt.drop()
          .items(dropItemsList, Dropt.range(3, 5))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "ANY", 1)
          .items(dropItemsList, Dropt.range(4, 5))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "ANY", 2)
          .items(dropItemsList, Dropt.range(4, 6))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "ANY", 3)
          .items(dropItemsList, Dropt.range(5, 6))
      )
  );
}

function geometryOreDropt(name as string, oreName as string[], itemName as string){
    val item as string[] = itemName.split("");
    val map0 as string[][string] = {};

    for i in 0 .. 3{
        val splitResult = oreName[i].split(",");
        map0["name_" ~ i] = splitResult;
    }
    fortunePoorOreHelper(name ~ "P", map0["name_" ~ 0], item);
    fortuneOreHelper(name ~ "N", map0["name_" ~ 1], item);
    fortuneDenseOreHelper(name ~ "D", map0["name_" ~ 2], item);
    
    Dropt.list(name~"ST")
    .add(Dropt.rule()
      .matchBlocks(["name_" ~ i])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "REQUIRED")
          .items(item)
      )
    );
}