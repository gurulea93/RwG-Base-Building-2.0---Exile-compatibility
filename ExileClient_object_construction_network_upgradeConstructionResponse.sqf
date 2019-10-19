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
 
private["_newObject"];
_newObject = _this select 0;
_RemoveDefaultKit = getArray(missionConfigFile >> "CfgTerritories" >> "RemoveDefaultKit");
if !((typeOf _newObject) in _RemoveDefaultKit) then
{
	[player, "RwG_Item_WoodPlanks_Upgrade"] call ExileClient_util_playerCargo_remove;
}
else
{
	[player, "Exile_Item_FortificationUpgrade"] call ExileClient_util_playerCargo_remove;
};
["SuccessTitleOnly", ["Upgrade installed!"]] call ExileClient_gui_toaster_addTemplateToast;
true