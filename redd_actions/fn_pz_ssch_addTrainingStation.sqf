#include "const.hpp"

if(hasInterface) then {

    params ["_object"];
    
    // add
    _object addAction 
    [
        "<t size='1' color='#008000'>Ich bin Schießbahnleitender</t>",
        { 
           
            params ["_target", "_caller"];
            _caller setVariable [MENU_STRING, MENU_MAN_AUTO];
            [_caller] call Redd_fnc_pz_ssch_addActions;
            
        },
        [], 1, false, true, "",
        format ["count (_this getVariable [""%1"", []]) == 0", ACTION_INDICES_STRING]
    ];
};