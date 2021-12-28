comment "Exported from Arsenal by Reimchen";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

private _newUniform = "TTT_Uniform_brown_BW_Flecktarn";
private _oldUnifrom = uniform player;
if (_oldUnifrom != _newUniform) then {
        removeUniform player;
        player forceAddUniform _newUniform;
};
private _newVest = "TTT_Vest_Lite_brown_US_Desert";
private _oldVest = vest player;
if (_oldVest != _newVest) then {
        removeVest player;
        player addVest _newVest;
};
private _newBackpack = "B_Kitbag_rgr";
private _oldBackpack = backpack player;
if (_oldBackpack != _newBackpack) then {
        removeBackpack player;
        player addBackpack _newBackpack;
};
player addHeadgear "TTT_Beret_brown";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
for "_i" from 1 to 5 do {player addItemToVest "ace_epinephrine";};
player addItemToVest "ACE_NVG_Wide";

for "_i" from 1 to 7 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "TTT_Helmet_4_BW_Flecktarn";
for "_i" from 1 to 11 do {player addItemToBackpack "ace_fieldDressing";};
for "_i" from 1 to 6 do {player addItemToBackpack "ace_packingbandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ace_tourniquet";};
for "_i" from 1 to 4 do {player addItemToBackpack "ace_salineiv_500";};
for "_i" from 1 to 8 do {player addItemToBackpack "ace_quikclot";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "ace_morphine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ace_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_surgicalKit";};
for "_i" from 1 to 1 do {player addItemToBackpack "adv_aceCPR_AED";};

[player, "hgun_PDW2000_F", 4] call BIS_fnc_addWeapon;
[player, "hgun_ACPC2_F", 3] call BIS_fnc_addWeapon;
player addHandgunItem "acc_flashlight_pistol";
player addWeapon "Binocular";

//
player setRank "PRIVATE";
[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
