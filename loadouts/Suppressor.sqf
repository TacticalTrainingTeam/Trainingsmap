// Check the current equipped weapon and add the correct suppressor to it

params ["_unit"];

//primary Weapon
_gun = primaryWeapon _unit;

//5.56
if (_gun == "arifle_SPAR_01_blk_F" || _gun == "arifle_SPAR_01_GL_blk_F" || _gun == "LMG_03_F") then {
	_unit addPrimaryWeaponItem "muzzle_snds_m";
};

//7.62
if (_gun == "arifle_SPAR_03_blk_F") then {
	_unit addPrimaryWeaponItem "muzzle_snds_b";
};

//.338
if (_gun == "MMG_02_black_F") then {
	_unit addPrimaryWeaponItem "muzzle_snds_338_black";
};

//5.7
if (_gun == "SMG_03C_black") then {
	_unit addPrimaryWeaponItem "muzzle_snds_570";
};


//Side Arm
_sidearm = handgunWeapon _unit;

//9mm
if (_sidearm == "hgun_P07_blk_F") then {
	_unit addHandgunItem "muzzle_snds_l";
};
