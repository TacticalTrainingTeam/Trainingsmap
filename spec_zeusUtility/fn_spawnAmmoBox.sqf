/*
    Author: SpecOp0

    Description:
    Spawns a ammunition box / supply crate.
    The cargo is provided via addAction.

    Parameter(s):
    0: POSITION - Position to spawn the supply crate.

    Returns:
    true

    Usage:
    [position player] remoteExec ["Spec_zeusUtility_fnc_spawnAmmoBox", 2];
*/

private _parameterCorrect = params [ ["_position",[0,0,0], [[0]]] ];

if (_parameterCorrect && isServer) then {
    private _crate = createVehicle ["B_supplyCrate_F",_position,[],0,""];
    clearWeaponCargoGlobal _crate;
    clearMagazineCargoGlobal _crate;
    clearItemCargoGlobal _crate;
    clearBackpackCargoGlobal _crate;
    [_crate] call Spec_zeus_fnc_assignToAllCurators;

    // add actions to spawn cargo
    [[_crate],
    {
        _this params ["_crate"];
        if (hasInterface) then {
            // standard ammunition for main weapon
            _crate addAction ["<t color='#579D1C'>Munition (Hauptwaffe)</t>",{
                private _parameterCorrect = params [["_crate",objNull,[objNull]], ["_player",objNull,[objNull]] ];
                private _weaponMagazines = getArray (configFile >> "CfgWeapons" >> primaryWeapon _player >> "Magazines");
                if(count _weaponMagazines > 0) then {
                    _crate addMagazineCargoGlobal [_weaponMagazines select 0, 6];
                };

                // check if UGL magazines are supported and add them
                private _weaponMuzzles = getArray (configFile >> "CfgWeapons" >> primaryWeapon _player >> "Muzzles");
                if(count _weaponMuzzles > 1) then {
                    private _muzzleMagazines =  getArray (configFile >> "CfgWeapons" >> primaryWeapon _player >> (_weaponMuzzles select 1) >> "Magazines");
                    {
                        switch (_x) do {
                            case "1Rnd_Smoke_Grenade_shell" : {
                                _crate addMagazineCargoGlobal [_x,6];
                            };
                            case "1Rnd_SmokeRed_Grenade_shell" : {
                                _crate addMagazineCargoGlobal [_x,6];
                            };
                            case "1Rnd_HE_Grenade_shell" : {
                                _crate addMagazineCargoGlobal [_x,12];
                            };
                        };
                    } forEach _muzzleMagazines;
                };
            }, [], 1.5, false, true, "", "true", 5];

            // medical cargo
            _crate addAction ["<t color='#579D1C'>Medizinisches Material</t>",{
                private _parameterCorrect = params [["_crate",objNull,[objNull]], ["_player",objNull,[objNull]] ];
                _crate addItemCargoGlobal ["ACE_fieldDressing",125];
                _crate addItemCargoGlobal ["ACE_packingBandage",50];
                _crate addItemCargoGlobal ["ACE_tourniquet",10];
                
                _crate addItemCargoGlobal ["ACE_salineIV",10];
                _crate addItemCargoGlobal ["ACE_salineIV_500",5];
                _crate addItemCargoGlobal ["ACE_elasticBandage",25];
                _crate addItemCargoGlobal ["ACE_quikclot",25];
                _crate addItemCargoGlobal ["ACE_morphine",15];
                _crate addItemCargoGlobal ["ACE_epinephrine",15];
                _crate addItemCargoGlobal ["ACE_surgicalKit",5];
            }, [], 1.5, false, true, "", "true", 5];

            // clear crate
            _crate addAction ["<t color='#FF950E'>Kiste leeren",{
                params ["_target","_caller"];
                clearBackpackCargoGlobal _target;
                clearItemCargoGlobal _target;
                clearMagazineCargoGlobal _target;
                clearWeaponCargoGlobal _target;
            }, [], 1.5, false, true, "", "true", 5];

            // grenades
            _crate addAction ["Granaten",{
                private _parameterCorrect = params [["_crate",objNull,[objNull]], ["_player",objNull,[objNull]] ];
                _crate addItemCargoGlobal ["SmokeShell",36];
                _crate addItemCargoGlobal ["SmokeShellRed",12];
                _crate addItemCargoGlobal ["SmokeShellGreen",12];
                _crate addItemCargoGlobal ["SmokeShellPurple",12];
                _crate addItemCargoGlobal ["ACE_M84",12];
                _crate addItemCargoGlobal ["MiniGrenade",12];
            }, [], 1.5, false, true, "", "true", 5];

            // AT weapon
            private _cargoItems = [
                ["MAAWS Mk4","launch_MRAWS_green_F"],
                ["M136 (RHS)","rhs_weap_M136"],
                ["Pzf3","BWA3_Pzf3"]
            ];
            {
                _x params ["_displayName","_className"];
                _crate addAction [_displayName, {
                    params ["_target"];
                    (_this select 3) params ["_cargoItem"];
                    _target addWeaponCargoGlobal [_cargoItem,2];
                    // add magazines
                    private _magazines = getArray (configFile >> "CfgWeapons" >> _cargoItem >> "Magazines");
                    {
                        _target addMagazineCargoGlobal [_x,2];
                    } forEach _magazines;
                }, [_className], 1.5, false, true, "", "true", 5];
            } forEach _cargoItems;
        };
    }] remoteExec ["BIS_fnc_call", 0, true];
};

true
