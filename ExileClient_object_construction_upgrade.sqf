/**
 * ExileClient_object_construction_upgrade
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 * Exile & Base Building 2.0 compatibility by AeoG - El Rabito
 */
 
private["_object", "_UpgradeWithDefaultKit", "_UpgradeWithMetalGrid", "_nono", "_nonoGrid"];
_object = _this select 0;
_UpgradeWithDefaultKit = getArray(missionConfigFile >> "CfgTerritories" >> "UpgradeWithDefaultKit");
_UpgradeWithMetalGrid = getArray(missionConfigFile >> "CfgTerritories" >> "UpgradeWithMetalGrid");
_nono = (typeOf _object) in _UpgradeWithDefaultKit;
_nonoGrid = (typeOf _object) in _UpgradeWithMetalGrid;
if ((typeOf _object) in _UpgradeWithDefaultKit &&  "Exile_Item_FortificationUpgrade" in (magazines player)) then
{
	["upgradeConstructionRequest", [_object]] call ExileClient_system_network_send;
}
else
{
	if ((typeOf _object) in _UpgradeWithMetalGrid && "RwG_Item_MetalGrid_Upgrade" in (magazines player) && !(_nono)) then
	{
		["upgradeConstructionRequest", [_object]] call ExileClient_system_network_send;
	}
	else
	{
		if ("RwG_Item_WoodPlanks_Upgrade" in (magazines player) && !(_nono) && !(_nonoGrid)) then
		{
			["upgradeConstructionRequest", [_object]] call ExileClient_system_network_send;
		}
		else
		{
			["ErrorTitleAndText", ["Failed to upgrade!", "You are missing the required upgrade kit."]] call ExileClient_gui_toaster_addTemplateToast;
		};
		
	};	
};
true
