#priority 2000
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;
import scripts.hds_lib.cotlib;

function materialBuilder(name as string, partsList as string[], materialsList as int[string]){
val register as MaterialSystemHelper = CotUtils.getMaterialSystemHelper(name);
for parts in partsList{
    register.addPart(parts);
}
for mat in materialsList{
    register.registerMaterial(mat, materialsList[mat]);
}
register.registerAllMaterialParts();
}

//color ores
materialBuilder("colorOresBuilder", cotlib.colorOresPartsArray, cotlib.colorOresMaterialArray);

//geometry ores
materialBuilder("geometryOresBuilder", cotlib.geometryOresPartsArray, cotlib.geometryOresMaterialArray);

//metals
//materialBuilder("metalsBuilder_1", cotlib.metalPartsArray_1, cotlib.metalsMaterialArray_1);