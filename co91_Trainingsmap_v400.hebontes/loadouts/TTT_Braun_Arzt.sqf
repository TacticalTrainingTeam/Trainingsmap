params ["_unit", "_helm", "_tarn", "_farbe"];

_unit setRank "LIEUTENANT";

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
_unit addWeapon "arifle_SPAR_01_blk_F";
_unit addPrimaryWeaponItem "bwa3_acc_varioray_irlaser_black";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
_unit addWeapon "hgun_P07_blk_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform (["TTT_Uniform", "brown", _tarn] joinString "_");
_unit addVest (["TTT_Vest_Lite", "brown", "US_Desert"] joinString "_");
_unit addBackpack "B_Kitbag_cbr";

comment "Add binoculars";
_unit addWeapon "Binocular";

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
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "acex_intelitems_notepad";

_unit addItemToVest "ACRE_PRC152";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
_unit addItemToVest "ace_flags_blue";
_unit addItemToVest "ACE_SpraypaintBlue";
_unit addItemToVest "ACE_surgicalKit";
_unit addItemToVest "kat_basicDiagnostic";
_unit addItemToVest "kat_Pulseoximeter";

_unit addItemToBackpack (["TTT_Helmet", _helm, _tarn] joinString "_");
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_elasticBandage";};
_unit addItemToBackpack "kat_suction";
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_BVM";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_epinephrineIV";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_phenylephrine";};
_unit addItemToBackpack "ACE_salineIV_250";
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_suture";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_TXA";};
_unit addItemToBackpack "kat_oxygenTank_150";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_IO_FAST";};
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "kat_accuvac";
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_atropine";};
_unit addItemToBackpack "ACE_NVG_Wide_Black";

_unit addHeadgear (["TTT_Beret", "brown"] joinString "_");

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 1, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, true] call ace_safemode_fnc_setWeaponSafety;