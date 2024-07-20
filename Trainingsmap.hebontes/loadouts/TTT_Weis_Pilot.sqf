params ["_unit", "_helm", "_tarn", "_farbe"];

_unit setRank "CAPTAIN";

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
_unit addWeapon "hgun_P07_blk_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform "FIR_Fighter_Pilot_JASDF_Nomex4";
_unit addVest "FIR_pilot_vest";
_unit addBackpack "TTT_backpack_radio_white_us_desert";

comment "Add binoculars";
_unit addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Painkiller";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "acex_intelitems_notepad";

for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellOrange";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Handflare_Green";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "50Rnd_570x28_SMG_03";};
_unit addItemToVest "ACRE_PRC152";
for "_i" from 1 to 2 do {_unit addItemToVest "16Rnd_9x21_Mag";};

_unit addItemToBackpack "ACRE_PRC117F";
_unit addItemToBackpack "TTT_Helmet_Falcon";
_unit addItemToBackpack "ACE_NVG_Wide_Black";

_unit addHeadgear (["TTT_Beret", "white"] joinString "_");

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 2, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;