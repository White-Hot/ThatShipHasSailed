if (on = true) && (obj_CrewCon.Navigator = false) && (obj_Boat.playerCurrency > HireCost)
{
obj_CrewCon.Navigator = true;
obj_CrewCon.NavFirstName = firstName;
obj_CrewCon.NavFamilyName = FamilyName;
obj_CrewCon.NavMaxHealth = MaxHealth;
obj_CrewCon.NavMaxMoral = MaxMoral;
obj_CrewCon.NavHealth = MaxHealth;
obj_CrewCon.NavMoral = MaxMoral;
obj_Boat.playerCurrency -= HireCost;

obj_CrewCon.NavEyes = NavEyes;
obj_CrewCon.NavBody = NavBody;
obj_CrewCon.NavHair = NavHair;

obj_CrewCon.NavSkill = NavSkill;

instance_destroy();
}