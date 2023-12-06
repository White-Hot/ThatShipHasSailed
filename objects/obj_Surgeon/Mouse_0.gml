if (on = true)  && (obj_CrewCon.Surgeon = false) && (obj_Boat.playerCurrency > HireCost)
{
obj_CrewCon.Surgeon = true;
obj_CrewCon.SurgeonFirstName = firstName;
obj_CrewCon.SurgeonFamilyName = FamilyName;
obj_CrewCon.SurgeonMaxHealth = MaxHealth;
obj_CrewCon.SurgeonMaxMoral = MaxMoral;
obj_CrewCon.SurgeonHealth = MaxHealth;
obj_CrewCon.SurgeonMoral = MaxMoral;

obj_Boat.playerCurrency -= HireCost;

obj_CrewCon.SurgEyes = SurgEyes;
obj_CrewCon.SurgBody =SurgBody;
obj_CrewCon.SurgHair = SurgHair;

obj_CrewCon.SurgeonSkill = SurgSkill;


instance_destroy();
}