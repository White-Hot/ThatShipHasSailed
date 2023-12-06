if (on = true) && (obj_CrewCon.Quatermaster = false) && (obj_Boat.playerCurrency > HireCost)
{
    obj_CrewCon.Quatermaster = true;
    obj_CrewCon.QuatermasterFirstName = firstName;
    obj_CrewCon.QuatermasterFamilyName = FamilyName;
    obj_CrewCon.QuatermasterMaxHealth = MaxHealth;
    obj_CrewCon.QuatermasterMaxMoral = MaxMoral;
	  obj_CrewCon.QuatermasterHealth = MaxHealth;
    obj_CrewCon.QuatermasterMoral = MaxMoral;

    obj_Boat.playerCurrency -= HireCost;

    obj_CrewCon.QuaEyes = QuaEyes;
    obj_CrewCon.QuaBody = QuaBody;
    obj_CrewCon.QuaHair = QuaHair;

obj_CrewCon.QuatermasterSkill = QuaSkill;

instance_destroy();
	
}

