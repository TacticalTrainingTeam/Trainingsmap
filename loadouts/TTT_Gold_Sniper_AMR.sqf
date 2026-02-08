params ["_unit", "_helm", "_tarn", "_farbe"];

_unit setRank "CORPORAL";

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
_unit addWeapon "srifle_GM6_F";
_unit addPrimaryWeaponItem "optic_LRPS";
_unit addPrimaryWeaponItem "5Rnd_127x108_APDS_Mag";
_unit addWeapon "hgun_P07_blk_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform "U_B_FullGhillie_lsh";
_unit addVest (["TTT_Vest_Lite", "gold", "US_Desert"] joinString "_");
_unit addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
_unit addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_quickClot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_chestSeal";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_Painkiller";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "acex_intelitems_notepad";
_unit addItemToUniform "ACE_microDAGR";

for "_i" from 1 to 4 do {_unit addItemToVest "5Rnd_127x108_APDS_Mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};

_unit addItemToBackpack "ACE_Tripod";
for "_i" from 1 to 4 do {_unit addItemToBackpack "5Rnd_127x108_APDS_Mag";};
_unit addItemToBackpack "ACE_NVG_Wide_Black";
_unit addItemToBackpack "ACE_Kestrel4500";
_unit addItemToBackpack "ACE_ATragMX";
_unit addItemToBackpack "ACE_NVG_Wide_Black";

_unit addHeadgear (["TTT_Beret", "gold"] joinString "_");

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, true] call ace_safemode_fnc_setWeaponSafety;