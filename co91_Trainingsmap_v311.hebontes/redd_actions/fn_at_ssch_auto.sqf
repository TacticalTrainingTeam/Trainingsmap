#include "const.hpp"

if(hasInterface) then 
{

	params ["_player"];

	hint "Übungsbeginn in wenigen Sekunden.\n 1 Ziel, Zeit ca. 10 Sekunden";
	
	_init = true;

	_targetArray = nearestObjects [center_target_at_schulschiessen, ["TargetBase"], 450];

	sleep 5;

	_target = selectRandom _targetArray;

	sleep 5;

	[_player,_target] spawn
	{
		
		params ["_player","_target"];

		if (_player getVariable [MENU_STRING_2,MENU_MAN_AUTO_2] == MENU_MAN_AUTO_2) exitWith {};

		hint "Übungsbeginn!";
		
		_target animate ["terc",0];
		_endTime = time+9;
		_timeout = false;

		waituntil 
		{
			sleep 1;
			_timeout = time >= _endTime;
			_timeout or _target animationPhase "terc" == 1;
		};

		if (_timeout) then
		{
			if (_player getVariable [MENU_STRING_2,MENU_MAN_AUTO_2] == MENU_MAN_AUTO_2) exitWith {};
			_target animate ["terc",1];
			hint "Zeit abgelaufen";
			sleep 2;
			hint "Übungsende, Übungsende!";
		}
		else
		{
			if (_player getVariable [MENU_STRING_2,MENU_MAN_AUTO_2] == MENU_MAN_AUTO_2) exitWith {};
			hint "Ziel vernichtet";
			sleep 2;
			hint "Übungsende, Übungsende!";
		};

		if (_player getVariable [MENU_STRING_2,MENU_MAN_AUTO_2] == MENU_MAN_AUTO_2) exitWith {_target animate ["terc",1];};

		_player setVariable [MENU_STRING_2, MENU_MAN_AUTO_2];

	};

};

	