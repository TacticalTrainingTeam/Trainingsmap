/*
    Author: SpecOp0

    Description:
    Initializes for a unit variables needed for setting TFAR frequencies
    and set names for BFT system.
    Variables are chosen based on variable "Spec_var_TFARgroup".
    
    Example in init-field add: this setVariable ["Spec_var_TFARgroup",0];
    
    Parameter(s):
    0: OBJECT - unit/player which variables need to be initialized

    Returns:
    true
*/
private _parameterCorrect = params [["_unitName",objNull,[objNull]]];

if(_parameterCorrect) then {
    private _groupID = _unitName getVariable ["Spec_var_TFARgroup", 0];
    private ["_swFreq", "_lrFreq", "_callsign", "_BFTicon", "_BFTremarks"];
    _BFTicon = "b_inf";
    _BFTremarks = name _unitName;
    
    _swFreq = ["100"];
    _lrFreq = ["30","31","41","42","43","51","61"];
    switch _groupID do {
        case 0 : {
            _callsign = "Gelb";
        };
        case 1 : {
            _callsign = "Gruen";
        };
        case 2 : {
            _callsign = "Schwarz";
        };
        case 3 : {
            _callsign = "Blau";
        };
        case 4 : {
            _callsign = "Rot";
        };
        case 5 : {
            _callsign = "Weiss";
        };
        case 6 : {
            _callsign = "Platin";
        };
        case 7 : {
            _callsign = "Silber";
        };
        case 8 : {
            _callsign = "Bronze";
        };
        case 9 : {
            _callsign = "Braun";
        };
        case 10 : {
            _callsign = "Gold";
        };
        case 11 : {
            _callsign = "Grau";
        };
        case 12 : {
            _callsign = "Violett";
        };
        default {
            _swFreq = ["100"];
            _lrFreq = ["30"];
            _callsign = "Default";
        };
    };
    // set frequency variables
    _unitName setVariable ["Spec_var_swFreq", _swFreq];
    _unitName setVariable ["Spec_var_lrFreq", _lrFreq];

    // BFT Settings
    (group _unitName) setGroupIdGlobal [_callsign];
    _unitName setVariable ["BG_BFT_groupId", _callsign, true];
    _unitName setVariable ["BG_BFT_icon", _BFTicon, true]; 
    _unitName setVariable ["BG_BFT_remarks", _BFTremarks, true];
    if(count _swFreq > 0) then {
        _unitName setVariable ["BG_BFT_radioSR", (_swFreq select 0), true];
    };
    if(count _lrFreq > 0) then {
        _unitName setVariable ["BG_BFT_radioLR", (_lrFreq select 0), true];
    };
    
};
true
