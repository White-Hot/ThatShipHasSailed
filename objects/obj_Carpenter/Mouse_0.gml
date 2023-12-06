if (on = true) && (obj_CrewCon.Carpenter = false) && (obj_Boat.playerCurrency > HireCost)
{
    obj_CrewCon.Carpenter = true;
    obj_CrewCon.CarpenterFirstName = firstName;
    obj_CrewCon.CarpenterFamilyName = FamilyName;
    obj_CrewCon.CarpenterMaxHealth = MaxHealth;
    obj_CrewCon.CarpenterMaxMoral = MaxMoral;
	obj_CrewCon.CarpenterHealth = MaxHealth;
    obj_CrewCon.CarpenterMoral = MaxMoral;

    obj_Boat.playerCurrency -= HireCost;

    obj_CrewCon.CarpEyes = CarpEyes;
    obj_CrewCon.CarpBody = CarpBody;
    obj_CrewCon.CarpHair = CarpHair;
	
	
	
    instance_destroy();
	
}
