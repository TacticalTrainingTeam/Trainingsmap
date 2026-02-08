// Creates ACE Menu and Options to change to a different troop color, cmao and hemlet number + equipping suppressor and parachutes

_object = _this select 0; 

private _hauptmenu = ["ax_Menu4","Ausrüstung anpassen","",{},{true}] call ACE_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _hauptmenu] call ACE_interact_menu_fnc_addActionToObject;

private _farbmenu = ["ax_Menu1","Truppfarbe ändern","",{},{true}] call ACE_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "ax_Menu4"], _farbmenu] call ACE_interact_menu_fnc_addActionToObject;

private _tarnmenu = ["ax_Menu2","Tarnfarbe ändern","",{},{true}] call ACE_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "ax_Menu4"], _tarnmenu] call ACE_interact_menu_fnc_addActionToObject;

private _helmmenu = ["ax_Menu3","Helmnummer ändern","",{},{true}] call ACE_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "ax_Menu4"], _helmmenu] call ACE_interact_menu_fnc_addActionToObject;

////// Blau //////
_blau = [
    "Blau1",
    "Werde Blau",
    "",
    {
        _player setVariable ["farbe", "blue"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu1"], _blau] call ACE_interact_menu_fnc_addActionToObject;

////// Gelb //////
_yellow = [
    "Gelb1",
    "Werde Gelb",
    "",
    {
        _player setVariable ["farbe", "yellow"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4","ax_Menu1"], _yellow] call ACE_interact_menu_fnc_addActionToObject;

////// Gold //////
_gold = [
    "Gold1",
    "Werde Gold",
    "",
    {
        _player setVariable ["farbe", "gold"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions","ax_Menu4", "ax_Menu1"], _gold] call ACE_interact_menu_fnc_addActionToObject;

////// Grün //////
_green = [
    "Green1",
    "Werde Grün",
    "",
    {
        _player setVariable ["farbe", "green"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu1"], _green] call ACE_interact_menu_fnc_addActionToObject;

////// Grau //////
_grey = [
    "Grey1",
    "Werde Grau",
    "",
    {
        _player setVariable ["farbe", "grey"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu1"], _grey] call ACE_interact_menu_fnc_addActionToObject;

////// Rot //////
_red = [
    "Rot1",
    "Werde Rot",
    "",
    {
        _player setVariable ["farbe", "red"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu1"], _red] call ACE_interact_menu_fnc_addActionToObject;
 
////// Schwarz //////
_black = [
    "Rot1",
    "Werde Schwarz",
    "",
    {
        _player setVariable ["farbe", "black"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu1"], _black] call ACE_interact_menu_fnc_addActionToObject;

////// Orange //////
_orange = [
    "Orange1",
    "Werde Orange",
    "",
    {
        _player setVariable ["farbe", "orange"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu1"], _orange] call ACE_interact_menu_fnc_addActionToObject;

////// Violett //////
_violet = [
    "Violet1",
    "Werde Violet",
    "",
    {
        _player setVariable ["farbe", "violet"];
        hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu1"], _violet] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Flecktarn //////
_flecktarn= [
    "Flecktarn1",
    "Wähle Flecktarn",
    "",
    {
        _player setVariable ["tarn", "BW_Flecktarn"];
        hint "Neues Loadout ausrüsten um die richtige Tarnung zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu2"], _flecktarn] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Tropentarn //////
_tropentarn= [
    "Tropentarn1",
    "Wähle Tropentarn",
    "",
    {
        _player setVariable ["tarn", "BW_Tropentarn"];
        hint "Neues Loadout ausrüsten um die richtige Tarnung zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu2"], _tropentarn] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 1 //////
_eins= [
    "Helm1",
    "Wähle Helm 1",
    "",
    {
        _player setVariable ["helm", "1"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu3"], _eins] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 2 //////
_zwei= [
    "Helm2",
    "Wähle Helm 2",
    "",
    {
        _player setVariable ["helm", "2"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4","ax_Menu3"], _zwei] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 3 //////
_drei= [
    "Helm3",
    "Wähle Helm 3",
    "",
    {
        _player setVariable ["helm", "3"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu3"], _drei] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 4 //////
_vier= [
    "Helm4",
    "Wähle Helm 4",
    "",
    {
        _player setVariable ["helm", "4"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu3"], _vier] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 5 //////
_funf= [
    "Helm5",
    "Wähle Helm 5",
    "",
    {
        _player setVariable ["helm", "5"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu3"], _funf] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 6 //////
_sechs = [
    "Helm6",
    "Wähle Helm 6",
    "",
    {
        _player setVariable ["helm", "6"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4", "ax_Menu3"], _sechs] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 7 //////
_sieben= [
    "Helm7",
    "Wähle Helm 7",
    "",
    {
        _player setVariable ["helm", "7"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions","ax_Menu4", "ax_Menu3"], _sieben] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 8 //////
_acht= [
    "Helm8",
    "Wähle Helm 8",
    "",
    {
        _player setVariable ["helm", "8"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions","ax_Menu4", "ax_Menu3"], _acht] call ACE_interact_menu_fnc_addActionToObject;

////// TTT Helm 9 //////
_neun = [
    "Helm1",
    "Wähle Helm 9",
    "",
    {
        _player setVariable ["helm", "9"];
        hint "Neues Loadout ausrüsten um die richtige Helmnummer zu bekommen.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions","ax_Menu4", "ax_Menu3"], _neun] call ACE_interact_menu_fnc_addActionToObject;

////// Fallschirm //////
_para = [
    "para1",
    "Fallschirm ausrüsten",
    "",
    {
        [_player] spawn compile preprocessFileLineNumbers "loadouts\Parachute.sqf";
        //hint "Fallschirm und Höhenmesser ausgerüstet."; //hint wird bereits in der sqf ausgegeben
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4"], _para] call ACE_interact_menu_fnc_addActionToObject;

////// Schalldämpfer //////
_supp = [
    "supp1",
    "Schalldämpfer ausrüsten",
    "",
    {
        [_player] spawn compile preprocessFileLineNumbers "loadouts\Suppressor.sqf";
        hint "Schalldämpfer ausgerüstet.";
    },
    { 
        //Leer
        params ["_target", "_player", "_params"];
    },
    {},
    [_object]
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions", "ax_Menu4"], _supp] call ACE_interact_menu_fnc_addActionToObject;