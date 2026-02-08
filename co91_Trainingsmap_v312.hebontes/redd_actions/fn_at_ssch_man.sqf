#include "const.hpp"

params ["_caller", "_type", "_distance","_target"];

sleep 5; 

hint "Übungsbeginn!";

// select type by given distance
switch (_type) do {

    case TYPE_SOFT_2 : 
    {

        switch (_distance) do 
        {

            case DISTANCE_NEAR_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_weiche_nah_pop_4,
                    panzer_schulschiessen_weiche_nah_pop_5
                ];
                _target animate ["terc",0];

            };

            case DISTANCE_MEDIUM_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_weiche_mittel_pop_4,
                    panzer_schulschiessen_weiche_mittel_pop_5
                ];
                _target animate ["terc",0];
                
            };

            case DISTANCE_FAR_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_weiche_fern_pop_4,
                    panzer_schulschiessen_weiche_fern_pop_5
                ];
                _target animate ["terc",0];
                
            };

        };
        
    };

    case TYPE_MEDIUM_2 : 
    {

        switch (_distance) do 
        {

            case DISTANCE_NEAR_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_mittel_nah_pop_4,
                    panzer_schulschiessen_mittel_nah_pop_5
                ];
                _target animate ["terc",0];

            };

            case DISTANCE_MEDIUM_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_mittel_mittel_pop_4,
                    panzer_schulschiessen_mittel_mittel_pop_5
                ];
                _target animate ["terc",0];
                
            };

            case DISTANCE_FAR_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_mittel_fern_pop_4,
                    panzer_schulschiessen_mittel_fern_pop_5
                ];
                _target animate ["terc",0];
                
            };

        };

    };

    case TYPE_HARD_2 : 
    {

        switch (_distance) do 
        {

            case DISTANCE_NEAR_2: 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_hart_nah_pop_4,
                    panzer_schulschiessen_hart_nah_pop_5
                ];
                _target animate ["terc",0];

            };

            case DISTANCE_MEDIUM_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_hart_mittel_pop_4,
                    panzer_schulschiessen_hart_mittel_pop_5
                ];
                _target animate ["terc",0];
                
            };

            case DISTANCE_FAR_2 : 
            {

                _target = selectRandom 
                [
                    panzer_schulschiessen_hart_fern_pop_4,
                    panzer_schulschiessen_hart_fern_pop_5
                ];
                _target animate ["terc",0];
                
            };

        };
        
    };

};

[_caller,_target] spawn
{

    params ["_caller","_target"];

    waituntil 
    {
        sleep 1;
        _target animationPhase "terc" == 1;
    };

    if !(_caller getVariable [MENU_STRING_2,MENU_MAN_AUTO_2] == MENU_MAN_AUTO_2) then {hint "Ziel vernichtet";};
    _caller setVariable [MENU_STRING_2, MENU_MAN_AUTO_2];

};