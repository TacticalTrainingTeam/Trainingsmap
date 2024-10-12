// disable the automatic popup of targets
nopop = true;

//Eventhandler der die Loadoutauswahl an Zeusplatzierte Container heftet und mit Nachschub befüllt
["B_Slingload_01_Cargo_F", "Init",{
	(_this select 0) setVariable ["ace_cargo_noRename", true]; //Container kann nicht umbenannt werden

	[_this select 0] call Andx_loadouts_fnc_addActions; //Loadoutauswahl

	(_this select 0) allowDamage false; //Container nicht zerstören

	[_this select 0] execVM "scripts\ax_log.sqf"; //Inhalt
	[_this select 0] execVM "scripts\ax_options.sqf"; //Truppfarben etc

    [(_this select 0), 0] call ace_cargo_fnc_setSpace;  //Container hat kein ACE Inventar

}, false, nil, false] call CBA_fnc_addClassEventHandler;

["B_Slingload_01_Repair_F", "Init",{
	(_this select 0) setVariable ["ace_cargo_noRename", true]; //Container kann nicht umbenannt werden

	[_this select 0] call Andx_loadouts_fnc_addActions; //Loadoutauswahl

	(_this select 0) allowDamage false; //Container nicht zerstören

	[_this select 0] execVM "scripts\ax_log_pio.sqf"; //Inhalt
	[_this select 0] execVM "scripts\ax_options.sqf"; //Truppfarben etc

    [(_this select 0), 0] call ace_cargo_fnc_setSpace;  //Container hat kein ACE Inventar

}, false, nil, false] call CBA_fnc_addClassEventHandler;

["B_Slingload_01_Medevac_F", "Init",{
	(_this select 0) setVariable ["ace_cargo_noRename", true]; //Container kann nicht umbenannt werden

	[_this select 0] call Andx_loadouts_fnc_addActions; //Loadoutauswahl

	(_this select 0) allowDamage false; //Container nicht zerstören

	[_this select 0] execVM "scripts\ax_log_medic.sqf"; //Inhalt
	[_this select 0] execVM "scripts\ax_options.sqf"; //Truppfarben etc

    [(_this select 0), 0] call ace_cargo_fnc_setSpace;  //Container hat kein ACE Inventar

}, false, nil, false] call CBA_fnc_addClassEventHandler;