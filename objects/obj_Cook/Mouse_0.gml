if (on = true) && (obj_CrewCon.Cook = false) && (obj_Boat.playerCurrency > HireCost)
{
obj_CrewCon.Cook  = true;
obj_CrewCon.CookFirstName = firstName;
obj_CrewCon.CookFamilyName = FamilyName;
obj_CrewCon.CookMaxHealth = MaxHealth;
obj_CrewCon.CookMaxMoral = MaxMoral;
obj_CrewCon.CookHealth = MaxHealth;
obj_CrewCon.CookMoral = MaxMoral;

obj_Boat.playerCurrency -= HireCost;


obj_CrewCon.CookEyes = CookEyes;
obj_CrewCon.CookBody = CookBody;
obj_CrewCon.CookHair = CookHair;

obj_CrewCon.CookSkill = CookSkill;

instance_destroy();
}