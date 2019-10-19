	
# This addon is WIP so bugs can appear. 
You can contact me on discord (AeoG | El'Rabito#5701)

Feel free to contribute to make the code better (My skills are limited, so this is the best i could do).


## 1>> Add these four overrides to class CfgExileCustomCode of your Exile config.cpp in your missionfile.

	class CfgExileCustomCode 
	{
		ExileClient_object_construction_upgradeShow = "RwG\ExileClient_object_construction_upgradeShow.sqf";
		ExileServer_object_construction_network_upgradeConstructionRequest = "RwG\ExileServer_object_construction_network_upgradeConstructionRequest.sqf";
		ExileClient_object_construction_network_upgradeConstructionResponse = "RwG\ExileClient_object_construction_network_upgradeConstructionResponse.sqf";
		ExileClient_object_construction_upgrade = "RwG\ExileClient_object_construction_upgrade.sqf";
	
	};

	
	
	
## 2>> Add the stuff below to the class CfgTerritories of your Exile config.cpp in your missionfile. 

## (NOT ALL CLASSNAMES INCLUDED, YOU HAVE TO ADD THEM MANUALLY OR WAIT TILL WE UPDATE IT)
	
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
	
## 3>> Add this to the extDB3 - exile.ini

	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;  RWG Base building 2.0
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	[upgradeObject_Wood]
	SQL1_1 = UPDATE construction SET class = ?, last_updated_at = NOW() WHERE id = ?
	
	SQL1_INPUTS = 1,2
