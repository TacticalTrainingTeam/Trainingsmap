["Terminate"] call BIS_fnc_EGSpectator;

switch (player getVariable "loadouts") do {
	//Grün
	case ("gelb_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\gelb\1.sqf";
	};
	case ("gelb_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\gelb\2.sqf";
	};
	case ("gelb_3"):{
		call compile preProcessFileLineNumbers "loadouts\start\gelb\3.sqf";
	};
	case ("gelb_4"):{
		call compile preProcessFileLineNumbers "loadouts\start\gelb\4.sqf";
	};
	case ("gelb_5"):{
		call compile preProcessFileLineNumbers "loadouts\start\gelb\5.sqf";
	};

	//Grün 1-4
	case ("schwarz_1");
	case ("rot_1");
	case ("violett_1");
	case ("gruen_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\1.sqf";
	};
	case ("schwarz_2");
	case ("rot_2");
	case ("violett_2");
	case ("gruen_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\2.sqf";
	};
	case ("schwarz_3");
	case ("rot_3");
	case ("violett_3");
	case ("gruen_3"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\3.sqf";
	};
	case ("schwarz_4");
	case ("rot_4");
	case ("violett_4");
	case ("gruen_4"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\4.sqf";
	};
	case ("schwarz_5");
	case ("rot_5");
	case ("violett_5");
	case ("gruen_5"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\5.sqf";
	};
	case ("schwarz_6");
	case ("rot_6");
	case ("violett_6");
	case ("gruen_6"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\6.sqf";
	};
	case ("schwarz_7");
	case ("rot_7");
	case ("violett_7");
	case ("gruen_7"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\7.sqf";
	};
	case ("schwarz_8");
	case ("rot_8");
	case ("violett_8");
	case ("gruen_8"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\8.sqf";
	};
	case ("schwarz_9");
	case ("rot_9");
	case ("violett_9");
	case ("gruen_9"):{
		call compile preProcessFileLineNumbers "loadouts\start\gruen\9.sqf";
	};

	//Grün-5
	case ("orange_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\1.sqf";
	};
	case ("orange_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\2.sqf";
	};
	case ("orange_3"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\3.sqf";
	};
	case ("orange_4"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\4.sqf";
	};
	case ("orange_5"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\5.sqf";
	};
	case ("orange_6"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\6.sqf";
	};
	case ("orange_7"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\7.sqf";
	};
	case ("orange_8"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\8.sqf";
	};
	case ("orange_9"):{
		call compile preProcessFileLineNumbers "loadouts\start\orange\9.sqf";
	};

	//Blau
	case ("blau_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\blau\1.sqf";
	};
	case ("blau_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\blau\2.sqf";
	};
	case ("blau_3"):{
		call compile preProcessFileLineNumbers "loadouts\start\blau\2.sqf";
	};
	case ("blau_4"):{
		call compile preProcessFileLineNumbers "loadouts\start\blau\2.sqf";
	};

	//Braun
	case ("braun_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\braun\1.sqf";
	};
	case ("braun_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\braun\2.sqf";
	};
	case ("braun_3"):{
		call compile preProcessFileLineNumbers "loadouts\start\braun\3.sqf";
	};
	case ("braun_4"):{
		call compile preProcessFileLineNumbers "loadouts\start\braun\4.sqf";
	};

	//Bronze
	case ("bronze_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\bronze\1.sqf";
	};
	case ("bronze_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\bronze\2.sqf";
	};
	case ("bronze_3"):{
		call compile preProcessFileLineNumbers "loadouts\start\bronze\3.sqf";
	};
	
	//Gold
	case ("gold_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\gold\1.sqf";
	};
	case ("gold_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\gold\2.sqf";
	};

	//Platin
	case ("platin"):{
		call compile preProcessFileLineNumbers "loadouts\start\platin\1.sqf";
	};

	//Silber
	case ("silber_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\silber\1.sqf";
	};
	case ("silber_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\silber\2.sqf";
	};

	//Weiß
	case ("weiss_1"):{
		call compile preProcessFileLineNumbers "loadouts\start\weiss\1.sqf";
	};
	case ("weiss_2"):{
		call compile preProcessFileLineNumbers "loadouts\start\weiss\2.sqf";
	};
	case ("weiss_3"):{
		call compile preProcessFileLineNumbers "loadouts\start\weiss\3.sqf";
	};
	case ("weiss_4"):{
		call compile preProcessFileLineNumbers "loadouts\start\weiss\4.sqf";
	};
	case ("weiss_5"):{
		call compile preProcessFileLineNumbers "loadouts\start\weiss\5.sqf";
	};
	case ("weiss_6"):{
		call compile preProcessFileLineNumbers "loadouts\start\weiss\6.sqf";
	};

	//Zeus
	case ("zeus"):{
		call compile preProcessFileLineNumbers "loadouts\start\zeus\zeus.sqf";
	};
};