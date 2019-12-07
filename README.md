	
# This addon is WIP so bugs can appear. 
# (DON'T USE IT ON LIVE SERVERS!)
You can contact me on discord (AeoG | El'Rabito#5701)

Feel free to contribute to make the code better (My skills are limited, so this is the best i could do).

Preview video 1 - https://www.youtube.com/watch?v=QNVqeeyM6js

Preview video 2 - https://www.youtube.com/watch?v=AM1ZIhsSpBA

RwG Basebuilding 2.0 addon - https://steamcommunity.com/sharedfiles/filedetails/?id=1892860855



## Update 22.10.19
>> Added another upgradekit variant "RwG_Item_MetalGrid_Upgrade" (Preview video 2 example)




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
	// It's important to add every class-name of the base building elements used on the server, 
	// otherwise the object will be invisible and corrupted in the database or it doesn't remove the Updgradekit from inventory. 
	//
	// Add all object class-names which can be upgraded with the Exile FortificationUpgrade to the array below.
	UpgradeWithDefaultKit[] = 
	{
		//Exile
		"Exile_Construction_WoodWall_Static",
		"Exile_Construction_WoodWallHalf_Static",
		"Exile_Construction_WoodDoorway_Static",
		"Exile_Construction_WoodGate_Static",
		"Exile_Construction_WoodWindow_Static",
		"RwG_Wood_Window_Grid_Static",
		"Exile_Construction_WoodFloor_Static",
		"Exile_Construction_WoodFloorPort_Static",
		"Exile_Construction_WoodFloorPortSmall_Static",
		"Exile_Construction_WoodLadderHatch_Static",
		"Exile_Construction_WoodDoor_Static",
		"Exile_Construction_WoodDrawBridge_Static",
		"Exile_Construction_ConcreteFloorPort_Static",
		"Exile_Construction_ConcreteWindow_Static",
		//RwG
		"RwG_Wood_Wall_Static",
		"RwG_Wood_Window_Static",
		"RwG_Wood_Window_TipUp_Static",
		"RwG_Wood_Doorway_Static",
		"RwG_Wood_Door_nLock_nWin_Static",
		"RwG_Wood_Door_nLock_Win_Static",
		"RwG_Wood_Door_Lock_nWin_Static",
		"RwG_Wood_Door_Lock_Win_Static", 
		"RwG_Wood_Gate_Swing_Static",
		"RwG_Wood_DoubleGate_Swing_Static",
		"RwG_Wood_Floor_Static",
		"RwG_Wood_FloorPort_Static"
	};
	// Add all class-names of upgraded objects with the Exile FortificationUpgrade to the array below. 
	// (Needed to remove the proper Upgradekit from player inventory).
	RemoveDefaultKit[] = 
	{
		//Exile
		"Exile_Construction_WoodWall_Reinforced_Static",
		"Exile_Construction_WoodWindow_Reinforced_Static",
		"Exile_Construction_WoodWallHalf_Reinforced_Static",
		"Exile_Construction_WoodDoorway_Reinforced_Static",
		"Exile_Construction_WoodDoor_Reinforced_Static",
		"Exile_Construction_WoodFloor_Reinforced_Static",
		"Exile_Construction_WoodFloorPort_Reinforced_Static",
		"Exile_Construction_WoodFloorPortSmall_Reinforced_Static",
		"Exile_Construction_WoodGate_Reinforced_Static",
		"Exile_Construction_WoodDrawBridge_Reinforced_Static",
		"Exile_Construction_WoodLadderHatch_Reinforced_Static",
		"Exile_Construction_ConcreteWindowHatch_Static",
		"Exile_Construction_ConcreteFloorHatch_Static",
		//RwG
		"RwG_ReInforced_Wall_Static",
		"RwG_ReInforced_Window_TipUp_Static",
		"RwG_ReInforced_Window_Static",
		"RwG_ReInforced_Doorway_Static",
		"RwG_ReInforced_Door_nLock_nWin_Static",
		"RwG_ReInforced_Door_nLock_Win_Static",
		"RwG_ReInforced_Door_Lock_nWin_Static",
		"RwG_ReInforced_Door_Lock_Win_Static",
		"RwG_ReInforced_Gate_Swing_Static",
		"RwG_ReInforced_DoubleGate_Swing_Static",
		"RwG_ReInforced_Floor_Static",
		"RwG_ReInforced_FloorPort_Static"

	};
	
	UpgradeWithMetalGrid[] = 
	{
		"RwG_ReInforced_Window_Static",
		"RwG_WoodGrid_Wall_Frame_Static",
		"RwG_WoodGrid_Doorway_Frame_Static",
		"RwG_WoodGrid_Doorway_Static",
		"RwG_Grid_DoorWay_Static"

	};
	
	RemoveMetalGridKit[] = 
	{
		"RwG_ReInforced_Window_Grid_Static",
		"RwG_WoodGrid_Wall_Static",
		"RwG_WoodGrid_Doorway_Static",
		"RwG_Grid_Door_Static"

	};
	
## 3>> If you use Enhanced Movement i would blacklist the doors/Window and the woodgrid,
otherwise you can open them with Enhanced Interaction or climb through the grid elements. 

(Put it like in the example below to your initplayerlocal.sqf. 

	EM_blacklist_obj =
	[
		"RwG_WoodGrid_Wall_Static",
		"RwG_Wood_Window_Grid_Static",
		"RwG_ReInforced_Window_Grid_Static",
	    	"RwG_GridWood_Door_Static",
		"RwG_Grid_Wall_Static",
		"RwG_WoodGrid_Doorway_Static",
		"RwG_WoodGrid_Door_Static"
	
	];
