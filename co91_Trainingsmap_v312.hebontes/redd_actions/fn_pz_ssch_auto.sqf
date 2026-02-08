#include "const.hpp"

if(hasInterface) then 
{

    params ["_player"];

    hint "Übungsbeginn in wenigen Sekunden.\n 10 Ziele, Zeit pro Ziel ca. 12 Sekunden";
    
    _init = true;

    _targetArray = nearestObjects [center_target_panzer_schulschiessen, ["TargetBase"], 450];

    sleep 5;

    for "_i" from 1 to 10 do
    {

        _target = selectRandom _targetArray;

        sleep 5;
        
        if (_init) then {hint "Übungsbeginn!";_init=false;};

        [_player,_target,_i] spawn
        {
            
            params ["_player","_target","_i"];

            if (_player getVariable [MENU_STRING,MENU_MAN_AUTO] == MENU_MAN_AUTO) exitWith {};
            
            _target animate ["terc",0];
            _endTime = time+11;
            _timeout = false;

            waituntil 
            {
                sleep 1;
                _timeout = time >= _endTime;
                _timeout or _target animationPhase "terc" == 1;
            };

            if (_timeout) then
            {
                if (_player getVariable [MENU_STRING,MENU_MAN_AUTO] == MENU_MAN_AUTO) exitWith {};
                _target animate ["terc",1];
                if (_i<10) then {hint format ["Ziel %1 , Zeit abgelaufen", _i]}
                else {hint format ["Ziel %1 , Zeit abgelaufen", _i];sleep 2;hint "Übungsende, Übungsende!";};
            }
            else
            {    
                if (_player getVariable [MENU_STRING,MENU_MAN_AUTO] == MENU_MAN_AUTO) exitWith {};
                if (_i<10) then {hint format ["Ziel %1 vernichtet", _i]}
                else {hint format ["Ziel %1 vernichtet", _i];sleep 2;hint "Übungsende, Übungsende!";};
            };

        };

        if (_player getVariable [MENU_STRING,MENU_MAN_AUTO] == MENU_MAN_AUTO) exitWith {_target animate ["terc",1]};

        sleep 3;
        waitUntil {_target animationPhase "terc" == 1};

    };

    _player setVariable [MENU_STRING, MENU_MAN_AUTO];

};

    