

if (isServer) then 
{
	params ["_currentTrigger","_t0","_t1","_t2","_t3","_t4","_t5","_t6"];

	_currentTrigger enableSimulationGlobal false;
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

		_checkArray = _actualTargetArray; 

		for "_i" from 0 to 3 do 
		{
			sleep 5;
			_selectedTarget = selectRandom _actualTargetArray;
			_selectedTarget animate ["terc",0];
			_actualTargetArray = _actualTargetArray - [_selectedTarget];
		};
	};
};

