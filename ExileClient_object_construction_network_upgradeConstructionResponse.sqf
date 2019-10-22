/**
 * ExileClient_object_construction_network_upgradeConstructionResponse
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 * Exile & Base Building 2.0 compatibility by AeoG - El Rabito
 */
 
private["_newObject", "_RemoveDefaultKit", "_RemoveGridKit"];
_newObject = _this select 0;
_RemoveDefaultKit = getArray(missionConfigFile >> "CfgTerritories" >> "RemoveDefaultKit");
_RemoveGridKit = getArray(missionConfigFile >> "CfgTerritories" >> "RemoveMetalGridKit");

if ((typeOf _newObject) in _RemoveDefaultKit) then
{
	[player, "Exile_Item_FortificationUpgrade"] call ExileClient_util_playerCargo_remove;
}
else
{
	if ((typeOf _newObject) in _RemoveGridKit) then
	{
		[player, "RwG_Item_MetalGrid_Upgrade"] call ExileClient_util_playerCargo_remove;
	}
	else
	{
		[player, "RwG_Item_WoodPlanks_Upgrade"] call ExileClient_util_playerCargo_remove;
	};
		
};
["SuccessTitleOnly", ["Upgrade installed!"]] call ExileClient_gui_toaster_addTemplateToast;
true
