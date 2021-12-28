

//safe beret and helmet
params ["_unit","_type","_head_headgear",["_inventory_headgear",""]];

_headgear = headgear _unit;

_helmet_array = 
[

	"TTT_Helmet_1_BW_Flecktarn",
	"TTT_Helmet_2_BW_Flecktarn",
	"TTT_Helmet_3_BW_Flecktarn",
	"TTT_Helmet_4_BW_Flecktarn",
	"TTT_Helmet_5_BW_Flecktarn",
	"TTT_Helmet_6_BW_Flecktarn",
	"TTT_Helmet_7_BW_Flecktarn",
	"TTT_Helmet_8_BW_Flecktarn",
	"TTT_Helmet_9_BW_Flecktarn",
	"TTT_Helmet1_Vehiclecrew",
	"TTT_Helmet2_Vehiclecrew",
	"TTT_Helmet3_Vehiclecrew",
	"TTT_Helmet4_Vehiclecrew",
	"TTT_Helmet5_Vehiclecrew",
	"TTT_Helmet6_Vehiclecrew",
	"H_PilotHelmetFighter_B",
	"TTT_Helmet_Falcon"

];

_beret_array = 
[

	"TTT_Beret_Blue",
	"TTT_Beret_Brown",
	"TTT_Beret_Bronze",
	"TTT_Beret_Yellow",
	"TTT_Beret_Gold",
	"TTT_Beret_Grey",
	"TTT_Beret_Green",
	"TTT_Beret_Logo",
	"TTT_Beret_Platinum",
	"TTT_Beret_Red",
	"TTT_Beret_Black",
	"TTT_Beret_Silver",
	"TTT_Beret_Violet",
	"TTT_Beret_White",
	"TTT_Beret_Orange"

];

{

	if (_headgear isEqualTo _x) then 
	{ 

		_head_headgear = _x;

	}
	else
	{

		_items = items _unit;

		if (_x in _items) then 
		{

			_inventory_headgear = _x;

		};

	};

}
foreach _helmet_array;

{

	if (_headgear isEqualTo _x) then 
	{ 

		_head_headgear = _x;

	}
	else
	{

		_items = items _unit;

		if (_x in _items) then 
		{

			_inventory_headgear = _x;

		};

	};

}
foreach _beret_array;

if (!(_headgear in _helmet_array) and !(_headgear in _helmet_array)) then {_head_headgear = headgear _unit;};
if ((headgear _unit) isEqualTo "") then {_head_headgear = "TTT_Helmet_1_BW_Flecktarn"};
[_unit,_type,_head_headgear,_inventory_headgear] call Redd_fnc_setType;