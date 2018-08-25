/*
	author = Reimchen
	description = Funktionen zum ausrüsten
*/
#include "const.hpp"

private _selectedIndex = lbCurSel LISTBOX_CLASS_ID;
private _selectedClass = CLASS_ARRAY select _selectedIndex;
missionNamespace setVariable [CLASS_VAR, _selectedClass];

private _faction = missionNamespace getVariable [FACTION_VAR, FACTION_DEFAULT];

private _success = true;
// remove all magazines 
removeAllWeapons player;
{
    player removeMagazine _x;
} forEach magazines player;
removeBackpack player;
// add default items
{
    _x params ["_item", "_count"];
    for "_i" from 1 to _count do {player addItem _item;};
} forEach DEFAULT_ITEMS;
switch (_selectedClass) do {
    case CLASS_AT : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 6 do {player addItem "BWA3_30Rnd_556x45_G36_AP";};
                player addWeapon "BWA3_G36_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // special
                player addItem "BWA3_optic_NSA80";
                ////player addBackpack "TTT_Backpack_Soldier_AT_BW_Flecktarn";
                [player, "BWA3_Pzf3", 1] call BIS_fnc_addWeapon;
                player addWeapon "Binocular";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_grip";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3_USMC";
                // special
                ////player addBackpack "TTT_Backpack_Soldier_AT_US_Desert";
                [player, "rhs_weap_M136", 1] call BIS_fnc_addWeapon;
                player addWeapon "ACE_Yardage450";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_RADIO : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 6 do {player addItem "BWA3_30Rnd_556x45_G36_AP";};
                player addWeapon "BWA3_G36_AG_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // special
                player addItem "ACE_microDAGR";
                //player addBackpack "TTT_Backpack_Operator_Radio_BW_Flecktarn";
                player addItemToBackpack "Laserbatteries";
                player addWeapon "Laserdesignator";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_m320";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3";
                // special
                player addItem "ACE_microDAGR";
                //player addBackpack "TTT_Backpack_Operator_Radio_US_Desert";
                player addItemToBackpack "Laserbatteries";
                player addWeapon "Laserdesignator";
                // handung
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_MEDIC : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 6 do {player addItem "BWA3_30Rnd_556x45_G36_AP";};
                player addWeapon "BWA3_G36_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // special
                //player addBackpack "TTT_Backpack_Medic_Combat_BW_Flecktarn";
                player addWeapon "Binocular";
                player setVariable ["ace_medical_medicClass", 1, true];
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_grip";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3_USMC";
                // special
                //player addBackpack "TTT_Backpack_Medic_Combat_US_Desert";
                player addWeapon "Binocular";
                player setVariable ["ace_medical_medicClass", 1, true];
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_GRENADIER : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 6 do {player addItem "BWA3_30Rnd_556x45_G36_AP";};
                player addWeapon "BWA3_G36_AG_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // special
                //player addBackpack "TTT_Backpack_Grenadier_Bw_Flecktarn";
                player addWeapon "Binocular";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_m320";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3";
                // special
                //player addBackpack "TTT_Backpack_Grenadier_Us_Desert";
                player addWeapon "Binocular";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_LMG : {
        switch (_faction) do {
            case FACTION_BW : {
                // special
                //player addBackpack "TTT_Backpack_Soldier_BW_Flecktarn";
                player addWeapon "Binocular";
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 4 do {player addItem "BWA3_200Rnd_556x45";};
                player addWeapon "BWA3_MG4_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // special
                //player addBackpack "TTT_Backpack_Soldier_US_Desert";
                player addItem "rhsusf_200Rnd_556x45_soft_pouch";
                player addWeapon "Binocular";
                // primary
                player addItem "rhsusf_acc_eotech_552";
                player addItem "rhsusf_acc_ELCAN";
                player addWeapon "rhs_weap_m249_pip_L";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_MG_ASSI : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 6 do {player addItem "BWA3_30Rnd_556x45_G36_AP";};
                player addWeapon "BWA3_G36_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // special
                //player addBackpack "TTT_Backpack_Assistant_MG_BW_Flecktarn";
                player addWeapon "ACE_Yardage450";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_grip";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3_USMC";
                // special
                //player addBackpack "TTT_Backpack_Assistant_MG_US_Desert";
                player addWeapon "ACE_Yardage450";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_MG : {
        switch (_faction) do {
            case FACTION_BW : {
                // special
                //player addBackpack "TTT_Backpack_Soldier_MG_BW_Flecktarn";
                player addWeapon "Binocular";
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 3 do {player addItem "BWA3_120Rnd_762x51";};
                player addWeapon "BWA3_MG5_Tan_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // special
                player addItem "rhsusf_100Rnd_762x51_m80a1epr";
                //player addBackpack "TTT_Backpack_Soldier_MG_US_Desert";
                player addWeapon "Binocular";
                // primary
                player addItem "rhsusf_acc_eotech_552";
                player addWeapon "rhs_weap_m240b_elcan";
                player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_PIO : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 6 do {player addItem "BWA3_30Rnd_556x45_G36_AP";};
                player addWeapon "BWA3_G36_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // special
                //player addBackpack "TTT_Backpack_Pioneer_BW_Flecktarn";
                player addWeapon "Binocular";
                player setVariable ["ACE_isEOD", true, true];
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_grip";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3_USMC";
                // special
                //player addBackpack "TTT_Backpack_Pioneer_US_Desert";
                player addWeapon "Binocular";
                player setVariable ["ACE_isEOD", true, true];
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_SNIPER : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                for "_i" from 1 to 6 do {player addItem "7Rnd_408_Mag";};
                player addWeapon "srifle_LRR_LRPS_F";
                player addPrimaryWeaponItem "optic_LRPS";
                // special
                player addItem "ACE_Kestrel4500";
                player addItem "ACE_ATragMX";
                player addItem "ACE_RangeCard";
                //player addBackpack "TTT_Backpack_Soldier_BW_Flecktarn";
                player addWeapon "ACE_Vector";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                for "_i" from 1 to 6 do {player addItem "7Rnd_408_Mag";};
                player addWeapon "srifle_LRR_LRPS_F";
                player addPrimaryWeaponItem "optic_LRPS";
                // special
                player addItem "ACE_Kestrel4500";
                player addItem "ACE_ATragMX";
                player addItem "ACE_RangeCard";
                //player addBackpack "TTT_Backpack_Soldier_US_Desert";
                player addWeapon "ACE_Vector";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_SPOTTER : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                player addItem "BWA3_muzzle_snds_G28";
                 for "_i" from 1 to 4 do {player addItem "BWA3_20Rnd_762x51_G28_AP";};
                for "_i" from 1 to 2 do {player addItem "BWA3_20Rnd_762x51_G28_SD";};
                player addWeapon "BWA3_G27_AG_equipped";
                player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_EOTech_Mag_Off";
                // special
                player addItem "ACE_Kestrel4500";
                player addItem "ACE_ATragMX";
                for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
                player addItem "ACE_microDAGR";
                player addItem "ACE_RangeCard";
                //player addBackpack "TTT_Backpack_Soldier_BW_Flecktarn";
                player addWeapon "ACE_Vector";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                player addItem "rhsusf_acc_rotex5_grey";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_m320";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3";
                // special
                player addItem "ACE_Kestrel4500";
                player addItem "ACE_ATragMX";
                for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
                player addItem "ACE_microDAGR";
                player addItem "ACE_RangeCard";
                //player addBackpack "TTT_Backpack_Soldier_US_Desert";
                player addWeapon "ACE_Vector";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    case CLASS_TEAMLEAD : {
        switch (_faction) do {
            case FACTION_BW : {
                // primary
                player addItem "BWA3_optic_NSV600";
                for "_i" from 1 to 6 do {player addItem "BWA3_30Rnd_556x45_G36_AP";};
                player addWeapon "BWA3_G36_AG_equipped";
                player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
                player addPrimaryWeaponItem "BWA3_optic_ZO4x30";
                // special
                for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
                player addItem "ACE_microDAGR";
                //player addBackpack "TTT_Backpack_Teamleader_BW_Flecktarn";
                player addWeapon "ACE_Yardage450";
                // handgun
                for "_i" from 1 to 2 do {player addItem "11Rnd_45ACP_Mag";};
                player addWeapon "hgun_Pistol_heavy_01_snds_F";
                player addHandgunItem "muzzle_snds_acp";
            };
            case FACTION_US : {
                // primary
                player addItem "rhsusf_acc_eotech_552";
                for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
                player addWeapon "rhs_weap_m4a1_m320";
                player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
                player addPrimaryWeaponItem "rhsusf_acc_ACOG3";
                // special
                for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
                player addItem "ACE_microDAGR";
                //player addBackpack "TTT_Backpack_Teamleader_US_Desert";
                player addWeapon "ACE_Yardage450";
                // handgun
                for "_i" from 1 to 2 do {player addItem "rhsusf_mag_7x45acp_MHP";};
                player addWeapon "rhsusf_weap_m1911a1";
            };
        };
    };
    default {
        _success = false;
        hint format ["Error\nSide: %1\nFaction: %2\nClass: %3",
            missionNamespace getVariable [SIDE_VAR, "NONE"],
            missionNamespace getVariable [FACTION_VAR, "NONE"],
            missionNamespace getVariable [CLASS_VAR, "NONE"]
        ];
    };
};
// close dialog if assigning loadout was successfull
if(_success) then {
    closeDialog 0;
    missionNamespace setVariable [SIDE_VAR, objNull];
    missionNamespace setVariable [FACTION_VAR, objNull];
    missionNamespace setVariable [CLASS_VAR, objNull];
};

hint "Markiere zuerst eine Seite/Fraktion/Klasse";
