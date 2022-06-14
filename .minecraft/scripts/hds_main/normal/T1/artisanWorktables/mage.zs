#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.player.IPlayer;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){

RecipeBuilder.get("mage")
    .setShaped([
        [null, <astralsorcery:itemcraftingcomponent:5>, null],
        [<ore:squareBlue>, <minecraft:book>, <ore:sphericalBlue>],
        [null, <ore:rhombusBlue>, null]])
    .addTool(<ore:artisansQuill>, 42)
    .setExperienceRequired(100)
    .setConsumeExperience(true)
    .setRecipeFunction(function(out, ins, info) {
        val player as IPlayer = info.player;
        if (isNull(player)) {
	        return out;
	    } else {
            return (!player.world.dayTime && player.health > 12.0f) ? out : null;
        }
    })
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.attackEntityFrom(<damageSource:MAGIC>, 12.0f);
    })
    .addOutput(<astralsorcery:itemjournal>)
    .create();

val temp = RecipeBuilder.get("mage")
    .setShaped([
        [<ore:stone>, <ore:stone>, <ore:stone>],
        [<ore:stone>, <tconstruct:clear_glass>, <ore:stone>],
        [<ore:stone>, <ore:stone>, <ore:stone>]])
    .addTool(<ore:artisansAthame>, 5)
    .setFluid(<liquid:mercury> * 125)
    // .setExtraOutputOne(<pyrotech:rock> * 12, 1.0)
    .setExperienceRequired(10)
    .setConsumeExperience(true);

val array as int[] = [1, 2, 4, 8, 4, 2, 1];
for i, n in array {
    temp.addOutput(<ore:dustTinyGlimmerite>.materialPart * (i + 4), n);
}
temp.create();

RecipeBuilder.get("mage")
    .setShaped([
        [<ore:stone>, <ore:dustGlimmerite>, <ore:stone>],
        [<ore:stone>, <ore:dustGlimmerite>, <ore:stone>],
        [<ore:stone>, <ore:dustGlimmerite>, <ore:stone>]])
    .addTool(<ore:artisansAthame>, 20)
    .setFluid(<liquid:mercury> * 250)
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
    .addOutput(<astralsorcery:blockmarble> * 12)
    .create();

RecipeBuilder.get("mage")
    .setShaped([
        [<ore:dustCoal>, <ore:gemFlawlessGlimmerite>, <ore:dustCoal>],
        [<ore:ingotCopper>, <contenttweaker:starlight_frame>, <ore:ingotCopper>],
        [<ore:dustCoal>, <ore:ingotCopper>, <ore:dustCoal>]])
    .addTool(<ore:artisansAthame>, 100)
    .setFluid(<liquid:mercury> * 1000)
    .addOutput(<astralsorcery:blockaltar>)
    .setExperienceRequired(700)
    .setConsumeExperience(true)
    .setRecipeFunction(function(out, ins, info) {
        val player as IPlayer = info.player;
        if (isNull(player)) {
	        return out;
	    } else {
            return (player.health > 8.0f) ? out : null;
        }
    })
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.attackEntityFrom(<damageSource:MAGIC>, 8.0f);
    })
    .create();

RecipeBuilder.get("mage")
    .setShaped([
        [null, null, <ore:gemFlawedQuartz>],
        [null, <ore:rodLongIron>, null],
        [<ore:rodLongIron>, null, null]])
    .addTool(<ore:artisansAthame>, 75)
    .setFluid(<liquid:glass> * 1000)
    .addOutput(<astralsorcery:itemlinkingtool>)
    .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotCopper>, <ore:gemFlawlessQuartz>, <ore:ingotCopper>],
    [<ore:gemFlawedGlimmerite>, <contenttweaker:starlight_frame>, <ore:gemFlawedGlimmerite>],
    [<ore:ingotIron>, <ore:gemFlawedGlimmerite>, <ore:ingotIron>]])
  .addTool(<ore:artisansAthame>, 100)
  .setFluid(<liquid:mercury> * 1000)
  .setExperienceRequired(800)
    .setConsumeExperience(true)
  .setRecipeFunction(function(out, ins, info) {
        val player as IPlayer = info.player;
        if (isNull(player)) {
	        return out;
	    } else {
            return (player.health > 12.0f) ? out : null;
        }
    })
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.attackEntityFrom(<damageSource:MAGIC>, 12.0f);
    })
  .addOutput(<contenttweaker:altar>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:gemChippedGlimmerite>, <ore:gemFlawedGlimmerite>],
    [null, <ore:stoneMarble>, <ore:gemChippedGlimmerite>],
    [<ore:stoneMarble>, null, null]])
  .addTool(<ore:artisansAthame>, 80)
  .setFluid(<liquid:mercury> * 1000)
  .addOutput(<astralsorcery:itemwand>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();
}
