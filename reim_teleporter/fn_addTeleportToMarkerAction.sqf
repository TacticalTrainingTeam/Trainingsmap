params ["_object", "_name", "_markerName"];
_object addAction [_name,
{
    params ["_target", "_caller", "_id", "_argv"];
    _argv params ["_markerName"];
    private _position = getMarkerPos _markerName;
    _position resize 2;
    _caller setPos _position;
},[_markerName],1,false,true,"","",5];
