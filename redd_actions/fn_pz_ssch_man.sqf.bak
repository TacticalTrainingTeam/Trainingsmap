#include "const.hpp"

params ["_caller", "_type", "_distance","_target"];

sleep 5; 

hint "Übungsbeginn!";

if (_caller getVariable [MENU_STRING,MENU_MAN_AUTO] == MENU_MAN_AUTO) exitWith {};

// select type by given distance
switch (_type) do {

    case TYPE_SOFT : 
	{

		switch (_distance) do 
		{

			case DISTANCE_NEAR : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_weiche_nah_pop,
					panzer_schulschiessen_weiche_nah_pop_1,
					panzer_schulschiessen_weiche_nah_pop_2,
					panzer_schulschiessen_weiche_nah_pop_3
				];
				_target animate ["terc",0];

			};

			case DISTANCE_MEDIUM : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_weiche_mittel_pop,
					panzer_schulschiessen_weiche_mittel_pop_1,
					panzer_schulschiessen_weiche_mittel_pop_2,
					panzer_schulschiessen_weiche_mittel_pop_3
				];
				_target animate ["terc",0];
				
			};

			case DISTANCE_FAR : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_weiche_fern_pop,
					panzer_schulschiessen_weiche_fern_pop_1,
					panzer_schulschiessen_weiche_fern_pop_2,
					panzer_schulschiessen_weiche_fern_pop_3
				];
				_target animate ["terc",0];
				
			};

		};
        
    };

    case TYPE_MEDIUM : 
	{

		switch (_distance) do 
		{

			case DISTANCE_NEAR : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_mittel_nah_pop,
					panzer_schulschiessen_mittel_nah_pop_1,
					panzer_schulschiessen_mittel_nah_pop_2,
					panzer_schulschiessen_mittel_nah_pop_3
					
				];
				_target animate ["terc",0];

			};

			case DISTANCE_MEDIUM : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_mittel_mittel_pop,
					panzer_schulschiessen_mittel_mittel_pop_1,
					panzer_schulschiessen_mittel_mittel_pop_2,
					panzer_schulschiessen_mittel_mittel_pop_3
				];
				_target animate ["terc",0];
				
			};

			case DISTANCE_FAR : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_mittel_fern_pop,
					panzer_schulschiessen_mittel_fern_pop_1,
					panzer_schulschiessen_mittel_fern_pop_2,
					panzer_schulschiessen_mittel_fern_pop_3
				];
				_target animate ["terc",0];
				
			};

		};

    };

    case TYPE_HARD : 
	{

		switch (_distance) do 
		{

			case DISTANCE_NEAR : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_hart_nah_pop,
					panzer_schulschiessen_hart_nah_pop_1,
					panzer_schulschiessen_hart_nah_pop_2,
					panzer_schulschiessen_hart_nah_pop_3
				];
				_target animate ["terc",0];

			};

			case DISTANCE_MEDIUM : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_hart_mittel_pop,
					panzer_schulschiessen_hart_mittel_pop_1,
					panzer_schulschiessen_hart_mittel_pop_2,
					panzer_schulschiessen_hart_mittel_pop_3
				];
				_target animate ["terc",0];
				
			};

			case DISTANCE_FAR : 
			{

				_target = selectRandom 
				[
					panzer_schulschiessen_hart_fern_pop,
					panzer_schulschiessen_hart_fern_pop_1,
					panzer_schulschiessen_hart_fern_pop_2,
					panzer_schulschiessen_hart_fern_pop_3
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

	if !(_caller getVariable [MENU_STRING,MENU_MAN_AUTO] == MENU_MAN_AUTO) then {hint "Ziel vernichtet";};
	_caller setVariable [MENU_STRING, MENU_MAN_AUTO];

};