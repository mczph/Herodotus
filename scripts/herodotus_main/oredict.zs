#modloaded bathappymod
#priority 0
import crafttweaker.item.IItemStack;

//Remove


//Add
//Add all the SilentGems gems into a single ore dictionary.
val sgemsArray = [
    <silentgems:gem>,
    <silentgems:gem:1>,
    <silentgems:gem:2>,
    <silentgems:gem:3>,
    <silentgems:gem:4>,
    <silentgems:gem:5>,
    <silentgems:gem:6>,
    <silentgems:gem:7>,
    <silentgems:gem:8>,
    <silentgems:gem:9>,
    <silentgems:gem:10>,
    <silentgems:gem:11>,
    <silentgems:gem:12>,
    <silentgems:gem:13>,
    <silentgems:gem:14>,
    <silentgems:gem:15>,
    <silentgems:gem:16>,
    <silentgems:gem:17>,
    <silentgems:gem:18>,
    <silentgems:gem:19>,
    <silentgems:gem:20>,
    <silentgems:gem:21>,
    <silentgems:gem:22>,
    <silentgems:gem:23>,
    <silentgems:gem:24>,
    <silentgems:gem:25>,
    <silentgems:gem:26>,
    <silentgems:gem:27>,
    <silentgems:gem:28>,
    <silentgems:gem:29>,
    <silentgems:gem:30>,
    <silentgems:gem:31>,
    <silentgems:gem:32>,
    <silentgems:gem:33>,
    <silentgems:gem:34>,
    <silentgems:gem:35>,
    <silentgems:gem:36>,
    <silentgems:gem:37>,
    <silentgems:gem:38>,
    <silentgems:gem:39>,
    <silentgems:gem:40>,
    <silentgems:gem:41>,
    <silentgems:gem:42>,
    <silentgems:gem:43>,
    <silentgems:gem:44>,
    <silentgems:gem:45>,
    <silentgems:gem:46>,
    <silentgems:gem:47>
] as IItemStack[];

for gem in sgemsArray{
    <ore:sgems>.add(gem);
}


//Add all the Botania mystic flowers into a single ore dictionary.
val botmflowersArray = [
    <botania:flower>,
    <botania:flower:1>,
    <botania:flower:2>,
    <botania:flower:3>,
    <botania:flower:4>,
    <botania:flower:5>,
    <botania:flower:6>,
    <botania:flower:7>,
    <botania:flower:8>,
    <botania:flower:9>,
    <botania:flower:10>,
    <botania:flower:11>,
    <botania:flower:12>,
    <botania:flower:13>,
    <botania:flower:14>,
    <botania:flower:15>
] as IItemStack[];

for flowers in botmflowersArray{
    <ore:botmflowers>.add(flowers);
}


//Add all the Botania double flowers into a single ore dictionary.
val botdflowersArray = [
    <botania:doubleflower1>,
    <botania:doubleflower1:1>,
    <botania:doubleflower1:2>,
    <botania:doubleflower1:3>,
    <botania:doubleflower1:4>,
    <botania:doubleflower1:5>,
    <botania:doubleflower1:6>,
    <botania:doubleflower1:7>,
    <botania:doubleflower2>,
    <botania:doubleflower2:1>,
    <botania:doubleflower2:2>,
    <botania:doubleflower2:3>,
    <botania:doubleflower2:4>,
    <botania:doubleflower2:5>,
    <botania:doubleflower2:6>,
    <botania:doubleflower2:7>,
] as IItemStack[];

for dflowers in botdflowersArray{
    <ore:botdflowers>.add(dflowers);
}