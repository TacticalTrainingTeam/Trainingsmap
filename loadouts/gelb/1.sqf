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

private _newUniform = "TTT_Uniform_Yellow_BW_Flecktarn";
private _oldUnifrom = uniform player;
if (_oldUnifrom != _newUniform) then {
        removeUniform player;
        player forceAddUniform _newUniform;
};
private _newVest = "TTT_Vest_Lite_Yellow_US_Desert";
private _oldVest = vest player;
if (_oldVest != _newVest) then {
        removeVest player;
        player addVest _newVest;
};
private _newBackpack = "TFAR_rt1523g_big_bwmod";
private _oldBackpack = backpack player;
if (_oldBackpack != _newBackpack) then {
        removeBackpack player;
        player addBackpack _newBackpack;
};
player addHeadgear "TTT_Beret_Yellow";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ACE_GD300_b";

for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

for "_i" from 1 to 2 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
player addItemToVest "ACE_NVG_Wide";

for "_i" from 1 to 7 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "TTT_Helmet_1_BW_Flecktarn";

[player, "arifle_SPAR_01_blk_F", 6, 2] call BIS_fnc_addWeapon;
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "optic_Hamr";
[player, "hgun_ACPC2_F", 3] call BIS_fnc_addWeapon;
player addHandgunItem "acc_flashlight_pistol";
player addWeapon "Rangefinder";

//

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
