#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.player.IPlayer;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.hdsutils.XPUtil;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){

RecipeBuilder.get("mage")
    .setShaped([
        [null, <astralsorcery:itemcraftingcomponent:5>, null],
        [<ore:squareBlue>, <minecraft:book>, <ore:sphericalBlue>],
        [null, <ore:rhombusBlue>, null]])
    .addTool(<ore:artisansQuill>, 42)
    .setRecipeFunction(function(out, ins, info) {
        val player as IPlayer = info.player;
        if (isNull(player)) {
	        return out;
	    } else {
            return (XPUtil.getPlayerXP(player) >= 1000 && !player.world.dayTime && player.health > 16.0f) ? out : null;
        }
    })
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        XPUtil.removePlayerXP(player, 1000);
        player.attackEntityFrom(<damageSource:MAGIC>, 16.0f);
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
    .setRecipeFunction(function(out, ins, info) {
        if (isNull(info.player)) {
            print("null");
	        return out;
	    } else {
            print(XPUtil.getPlayerXP(info.player));
            return (XPUtil.getPlayerXP(info.player) >= 10) ? out : null;
        }
    })
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        XPUtil.removePlayerXP(player, 10);
    });
for i in 2 .. 10 {
    temp.addOutput(<ore:dustTinyGlimmerite>.materialPart * i, pow(1.5, (10 - i)));
}
temp.create();

RecipeBuilder.get("mage")
    .setShaped([
        [<ore:stone>, <ore:dustGlimmerite>, <ore:stone>],
        [<ore:stone>, <ore:dustGlimmerite>, <ore:stone>],
        [<ore:stone>, <ore:dustGlimmerite>, <ore:stone>]])
    .addTool(<ore:artisansAthame>, 20)
    .setFluid(<liquid:mercury> * 250)
    .addOutput(<astralsorcery:blockmarble> * 12)
    .create();

RecipeBuilder.get("mage")
    .setShaped([
        [<ore:dustCoal>, <ore:gemFlawlessGlimmerite>, <ore:dustCoal>],
        [<ore:plateCopper>, <contenttweaker:starlight_frame>, <ore:plateCopper>],
        [<ore:dustCoal>, <ore:plateCopper>, <ore:dustCoal>]])
    .addTool(<ore:artisansAthame>, 100)
    .setFluid(<liquid:mercury> * 1000)
    .addOutput(<astralsorcery:blockaltar>)
    .setRecipeFunction(function(out, ins, info) {
        val player as IPlayer = info.player;
        if (isNull(player)) {
	        return out;
	    } else {
            return (XPUtil.getPlayerXP(player) >= 700 && player.health > 8.0f) ? out : null;
        }
    })
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        XPUtil.removePlayerXP(player, 700);
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
  .setRecipeFunction(function(out, ins, info) {
        val player as IPlayer = info.player;
        if (isNull(player)) {
	        return out;
	    } else {
            return (XPUtil.getPlayerXP(player) >= 1000 && player.health > 12.0f) ? out : null;
        }
    })
    .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        XPUtil.removePlayerXP(player, 1000);
        player.attackEntityFrom(<damageSource:MAGIC>, 12.0f);
    })
  .addOutput(<contenttweaker:altar>)
  .create();
}
