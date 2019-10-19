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
 
private["_object", "_UpgradeWithDefaultKit", "_nono" ];
_object = _this select 0;
_UpgradeWithDefaultKit = getArray(missionConfigFile >> "CfgTerritories" >> "UpgradeWithDefaultKit");
_nono = (typeOf _object) in _UpgradeWithDefaultKit;
if ((typeOf _object) in _UpgradeWithDefaultKit &&  "Exile_Item_FortificationUpgrade" in (magazines player)) then
{
	["upgradeConstructionRequest", [_object]] call ExileClient_system_network_send;
}
else
{
	if ("RwG_Item_WoodPlanks_Upgrade" in (magazines player) && !(_nono)) then
	{
		["upgradeConstructionRequest", [_object]] call ExileClient_system_network_send;
	}
	else
	{
		["ErrorTitleAndText", ["Failed to upgrade!", "You are missing the required upgrade kit."]] call ExileClient_gui_toaster_addTemplateToast;
	};
};
true