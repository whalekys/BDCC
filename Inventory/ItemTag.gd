extends Object
class_name ItemTag

enum {
	Illegal,
	BDSMRestraint,
	CanBeForcedByGuards,
	CanBeForcedInStocks,
	Condom,
	SoldByGeneralVendomat,
	SoldByMedicalVendomat,
	SoldByUnderwearVendomat,
	SoldByTheAnnouncer,
	SoldByAlexRynard,
	ChastityCage,
	Strapon,
	BreastPump,
	BreastPumpUsableByNPC,
	PenisPump,
	PenisPumpUsableByNPC,
	SexEngineDrug,
	Hypnovisor,
	
	GuardUniform,
	NurseUniform,
	EngineerUniform,
	GeneralInmateUniform,
	HighSecurityInmateUniform,
	SexualDeviantInmateUniform,
	
	CanPeeInto,
	CanForceCumInto,
	PlasticBottle,
	
	PortalPanties,
	
	AllowsEnslaving,
	ReturnsToPCIfSlaveReleased,
	
	RopeHarness,
	ImaginaryRestraint,
	
	ITEMTAGCOUNT,
}

const tagNames = [
	"Illegal",
	"BDSMRestraint",
	"CanBeForcedByGuards",
	"CanBeForcedInStocks",
	"Condom",
	"SoldByGeneralVendomat",
	"SoldByMedicalVendomat",
	"SoldByUnderwearVendomat",
	"SoldByTheAnnouncer",
	"SoldByAlexRynard",
	"ChastityCage",
	"Strapon",
	"BreastPump",
	"BreastPumpUsableByNPC",
	"PenisPump",
	"PenisPumpUsableByNPC",
	"SexEngineDrug",
	"Hypnovisor",
	
	"GuardUniform",
	"NurseUniform",
	"EngineerUniform",
	"GeneralInmateUniform",
	"HighSecurityInmateUniform",
	"SexualDeviantInmateUniform",
	
	"CanPeeInto",
	"CanForceCumInto",
	"PlasticBottle",
	
	"PortalPanties",
	
	"AllowsEnslaving",
	"ReturnsToPCIfSlaveReleased",
	
	"RopeHarness",
	"ImaginaryRestraint",
]

static func nameToTag(tagName):
	return tagNames.find(tagName)

static func getName(tag):
	if(tag == Illegal):
		return "Illegal"
	if(tag == BDSMRestraint):
		return "Restraint"
	if(tag == Condom):
		return "Condom"
		
	if(tag >= 0 && tag < tagNames.size()):
		return tagNames[tag]
		
	return "error"

static func getNamesAndValues():
	var result = []
	for _i in range(ITEMTAGCOUNT):
		result.append([_i, getName(_i)])
	return result
