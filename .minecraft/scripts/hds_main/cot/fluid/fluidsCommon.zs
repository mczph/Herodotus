#priority 2000
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.hds_lib.cotlib;

//register
//addFluid(name as string,color as int,temperature as int,viscosity as int,density as int,luminosity as int,isLava as bool){
CotUtils.addFluid("limewater", 0x858585, 300, 1000, 1000, 0, false);
CotUtils.addFluid("distilledwater", 0x43ecfb, 300, 1000, 1000, 0, false);
CotUtils.addFluid("molten_gel", 0xcdcdcd, 350, 1000, 1000, 15, true);
CotUtils.addFluid("lively_water", 0x66ccff, 300, 1000, 1000, 0, false);
CotUtils.addFluid("molten_raw_iron", 0xfcb89d, 1000, 1000, 1000, 14, true);
CotUtils.addFluid("molten_river_nickel", 0x7d7d7d, 1000, 1000, 1000, 14, true);
CotUtils.addFluid("molten_river_iron", 0xc0c0c0, 1000, 1000, 1000, 14, true);
CotUtils.addFluid("molten_river_copper", 0x845200, 1000, 1000, 1000, 14, true);
CotUtils.addFluid("unstable_aura", 0xbecbf3, 1000, 1000, 1000, 2000, false);
CotUtils.addFluid("unstable_mutation_agent", 0xaf1ad2, 1000, 1000, 1000, 2000, false);
CotUtils.addFluid("taint_nutrition", 0x10005b, 1000, 1000, 1000, 2000, false);
CotUtils.addFluid("golem_perfusate", 0x1005b3, 1000, 1000, 1000, 2000, false);
CotUtils.addFluid("primordial_pearl_mix", 0x7427d, 1000, 1000, 1000, 2000, false);
CotUtils.addFluid("universal_alchemical_solvent", 0xd4d46e, 1000, 1000, 1000, 2000, false);

CotUtils.addFluid("blue_mercury_suspension", 0x5555aa, 1000, 1000, 1000, 2000, false);
CotUtils.addFluid("red_mercury_suspension", 0xaa5555, 1000, 1000, 1000, 2000, false);
CotUtils.addFluid("yellow_mercury_suspension", 0xaaaa55, 1000, 1000, 1000, 2000, false);

for shape in cotlib.shapes {
    CotUtils.addFluid(shape ~ "_plastic", 0xdddddd, 1000, 1000, 1000, 15, true);
    CotUtils.addFluid(shape ~ "_mercury_suspension", 0x808080, 300, 1000, 1000, 0, false);
}

CotUtils.addFluid("infusion_solution", 0x6520a1, 300, 1000, 1000, 0, false);
