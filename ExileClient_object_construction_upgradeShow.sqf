/**
 * ExileClient_object_construction_upgradeShow
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 * Exile & Base Building 2.0 compatibility by AeoG - El Rabito
 */
 
private["_showUpgradeMenu", "_constructionConfigs", "_constructionConfig", "_upgradeObjectExile", "_upgradeObjectRWGPlanks", "_upgradeObjectRWGGrid" ];
_showUpgradeMenu = false;
_constructionConfigs = "(getText (_x >> 'staticObject')) isEqualTo (typeOf ExileClientInteractionObject)" configClasses (configFile >> "CfgConstruction");
if !(_constructionConfigs isEqualTo []) then 
{
	_constructionConfig = _constructionConfigs select 0;
	_upgradeObjectExile = getText (_constructionConfig >> "upgradeObject");
	_upgradeObjectRWGPlanks = getText (_constructionConfig >> "upgradeObject_Wood");
	_upgradeObjectRWGGrid = getText (_constructionConfig >> "upgradeObject_Grid");
	_showUpgradeMenu = !(_upgradeObjectExile isEqualTo "") || !(_upgradeObjectRWGPlanks isEqualTo "") || !(_upgradeObjectRWGGrid isEqualTo "");
	_showUpgradeMenu = _showUpgradeMenu && (call ExileClient_util_world_isInOwnTerritory);
};
 _showUpgradeMenu
