

	if(hasInterface) then 
	{
		
		params ["_object","_spawn_marker","_type"];

		_object addAction ["Fahrzeug spawnen",VVS_fnc_openVVS,[_spawn_marker,_type],1,false,true,"","",5];
		
	};