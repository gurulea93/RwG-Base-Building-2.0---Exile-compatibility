# RwG-Base-Building-2.0---Exile-compatibility

Add the stuff below to the class CfgTerritories of your Exile config.cpp in your missionfile.

  //
	// It's important to add every class-name of the upgradable base building elements used on the server, otherwise the object will be invisible and corrupted in the database or it doesn't remove the Updgradekit form inventory. 
	//
	// Add all object class-names which are upgraded with the Exile FortificationUpgrade to the array below.
	UpgradeWithDefaultKit[] = 
	{
		//Exile
		"Exile_Construction_WoodWall_Static",
		//RwG
		"RwG_Wood_Wall_Static",
		"RwG_Wood_Doorway_Static",
		"RwG_Wood_Door_nLock_nWin_Static",
		"RwG_Wood_Door_nLock_Win_Static",
		"RwG_Wood_Door_Lock_nWin_Static",
		"RwG_Wood_Door_Lock_Win_Static",
		"RwG_Wood_Gate_Swing_Static",
		"RwG_Wood_DoubleGate_Swing_Static",
		"RwG_Wood_Window_TipUp_Static",
		"RwG_Wood_Floor_Static",
		"RwG_Wood_FloorPort_Static"
	};
	// Add all class-names of objects upgraded with the Exile FortificationUpgrade to the array below. (Needed to remove the proper Upgradekit from player inventory).
	RemoveDefaultKit[] = 
	{
		//Exile
		"Exile_Construction_WoodWall_Reinforced_Static",
		//RwG
		"RwG_ReInforced_Wall_Static",
		"RwG_ReInforced_Doorway_Static",
		"RwG_ReInforced_Door_nLock_nWin_Static",
		"RwG_ReInforced_Door_nLock_Win_Static",
		"RwG_ReInforced_Door_Lock_nWin_Static",
		"RwG_ReInforced_Door_Lock_Win_Static",
		"RwG_ReInforced_Gate_Swing_Static",
		"RwG_ReInforced_Floor_Static",
		"RwG_ReInforced_FloorPort_Static"

	};
	
};
