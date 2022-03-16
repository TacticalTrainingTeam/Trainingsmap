params ["_unit", "_helm"];

_unit setRank "SERGEANT";

comment "Exported from Arsenal by Andx";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local _unit) exitWith {};

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add weapons";
_unit addWeapon "SMG_03C_black";
_unit addPrimaryWeaponItem "50Rnd_570x28_SMG_03";
_unit addWeapon "hgun_P07_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform "TTT_Uniform_Bronze_BW_Flecktarn";
_unit addVest "TTT_Vest_Crew_Bronx";
_unit addBackpack "TTT_backpack_radio_bronx_us_desert";

comment "Add binoculars";
_unit addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ItemAndroid";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "acex_intelitems_notepad";

for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItemToVest "50Rnd_570x28_SMG_03";};
_unit addItemToVest "ACRE_PRC152";
_unit addItemToVest "ACE_NVG_Wide_Black";

_unit addItemToBackpack "TTT_Helmet_bronx_VehicleCrew";
_unit addItemToBackpack "ACRE_PRC117F";

_unit addHeadgear "TTT_Beret_Bronze";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 1, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;