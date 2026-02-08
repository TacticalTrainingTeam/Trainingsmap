params ["_object"];

_object addAction [
    "Loadouts", //Title
    {createDialog "andx_loadouts";}, //Script
    [], //Arguments
    1, //Priority
    false, //showWindow
    true, //hideonuse
    "", //shortcut
    "", //condition
    11 //radius
];
