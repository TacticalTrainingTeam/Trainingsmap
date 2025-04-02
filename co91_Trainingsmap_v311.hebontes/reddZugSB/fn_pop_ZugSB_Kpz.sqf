

if (isServer) then 
{
	params ["_currentTrigger", "_nextTrigger","_t0","_t1","_t2","_t3","_t4","_t5","_t6"];

	_currentTrigger enableSimulationGlobal false;
	_nextTrigger enableSimulationGlobal true;
	_targetArray =  [_t0, _t1, _t2, _t3, _t4, _t5, _t6];
	_actualTargetArray = [];

	for "_i" from 0 to 3 do
	{
		_actualTarget = selectRandom _targetArray;
		_actualTargetArray pushBack _actualTarget;
		_targetArray = _targetArray - [_actualTarget];
	};

	_spawn = [_actualTargetArray] spawn
	{
		params ["_actualTargetArray"];

		uiSleep 10;

		for "_i" from 0 to 3 do 
		{
			uiSleep 5;
			_selectedTarget = selectRandom _actualTargetArray;
			_selectedTarget animate ["terc",0];
			_actualTargetArray = _actualTargetArray - [_selectedTarget];
		};
	};
};

