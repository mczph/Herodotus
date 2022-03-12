#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.IBlockColorSupplier;
import crafttweaker.item.IItemStack;
import scripts.hds_lib.cotlib;

for id in cotlib.plainBlockIDs {
    cotlib.addNormalBlock(id);
}

val ysb as Block = VanillaFactory.createBlock("yellow_spherical_block", <blockmaterial:clay>);
ysb.blockHardness = 1.0f;
ysb.register();

val rawIronBlock as Block = VanillaFactory.createBlock("raw_iron_block", <blockmaterial:rock>);
rawIronBlock.blockHardness = 1.0f;
rawIronBlock.toolClass = "pickaxe";
rawIronBlock.toolLevel = 1;
rawIronBlock.register();

val smp as Block = VanillaFactory.createBlock("static_molten_plastic", <blockmaterial:rock>);
smp.toolClass = "pickaxe";
smp.toolLevel = 2;
smp.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
    val plastic as IItemStack = itemUtils.getItem("pneumaticcraft:plastic", 8);
	drops.add(plastic);
	drops.add(plastic % 50);
});
smp.register();

val iwu = VanillaFactory.createBlock("infinite_water_upgrade_module", <blockmaterial:glass>);
iwu.fullBlock = false;
iwu.blockLayer = "CUTOUT";
iwu.register();

var mb = VanillaFactory.createBlock("mercury_block", <blockmaterial:rock>);
mb.textureLocation = ResourceLocation.create("base:blocks/block");
mb.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0xB7B7B7);
};
mb.blockColorSupplier = function(state, access, pos, tintIndex) {
    return Color.fromInt(0xB7B7B7);
};
mb.register();

val block as Block = VanillaFactory.createBlock("flesh_block", <blockmaterial:sponge>);
block.blockSoundType = <soundtype:field_185859_l>; // slime
block.register();

val plank as Block = VanillaFactory.createBlock("thaumic_zorra_plank", <blockmaterial:wood>);
plank.register();

val tube as Block = VanillaFactory.createBlock("sieve_tube", <blockmaterial:sponge>);
tube.blockSoundType = <soundtype:field_185859_l>;
tube.register();

val bud as Block = VanillaFactory.createDirectionalBlock("bloodbath_bud", <blockmaterial:plants>, "ALL");
bud.fullBlock = false;
bud.translucent = true;
bud.blockSoundType = <soundtype:field_185859_l>;
bud.blockLayer = "CUTOUT";
bud.register();

val bundle as Block = VanillaFactory.createDirectionalBlock("nerve_bundle", <blockmaterial:plants>, "ALL");
bundle.fullBlock = false;
bundle.translucent = true;
bundle.blockLayer = "CUTOUT";
bundle.blockSoundType = <soundtype:field_185859_l>;
bundle.register();
