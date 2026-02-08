//Fills given object with a list of Items

params ["_containers"];
//Kiste befüllen
[
    [_containers],
    [
      ["DemoCharge_Remote_Mag", 30],
      ["SatchelCharge_Remote_Mag", 10]
    ]
] call ttt_common_fnc_crateFiller;