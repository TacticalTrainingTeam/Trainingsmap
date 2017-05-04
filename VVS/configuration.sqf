//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = false;

//If you are going to use Pre-set VVS Vehicles it is recommended to set this to true as it will not run through the config saving CPU resources on initialization, otherwise leave as default.
VVS_Premade_List = true;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.
		
		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/
VVS_Car = [];
VVS_Air = [];
VVS_Ship = [];
VVS_Armored = [];
VVS_Submarine = [];
VVS_Autonomous = [];
VVS_Support = [];
//VVS_Submarine = ["TTT_Truppfahrzeug_Mg_Bw_Tropentarn", "TTT_Truppfahrzeug_Mg_Bw_Flecktarn", "TTT_Truppfahrzeug_Gl_Bw_Tropentarn", "TTT_Truppfahrzeug_Gl_Bw_Flecktarn", "TTT_Oplfahrzeug_Bw_Tropentarn", "TTT_Oplfahrzeug_Bw_Flecktarn", "TTT_Schuetzenpanzer_Bw_Tropentarn", "TTT_Schuetzenpanzer_Bw_Flecktarn", "TTT_Kampfpanzer_Bw_Tropentarn", "TTT_Kampfpanzer_Bw_Flecktarn", "TTT_Truppfahrzeug_Mg_Us_Desert", "TTT_Truppfahrzeug_Mg_Us_Woodland",  "TTT_Truppfahrzeug_Gl_Us_Desert", "TTT_Truppfahrzeug_Gl_Us_Woodland", "TTT_Oplfahrzeug_Us_Desert", "TTT_Oplfahrzeug_Us_Woodland", "TTT_Schuetzenpanzer_Us_Desert", "TTT_Schuetzenpanzer_Us_Woodland", "TTT_Kampfpanzer_Us_Desert", "TTT_Kampfpanzer_Us_Woodland"];
//VVS_Autonomous = ["TTT_Kampfhelikopter_Bw_Tropentarn", "TTT_Kampfhelikopter_Bw_Flecktarn", "TTT_Sanitaetshelikopter_Bw_Tropentarn", "TTT_Sanitaetshelikopter_Bw_Flecktarn", "TTT_Logistikhelikopter_Bw_Tropentarn", "TTT_Logistikhelikopter_Bw_Flecktarn", "TTT_Transporthelikopter_Bw_Tropentarn", "TTT_Transporthelikopter_Bw_Flecktarn", "TTT_Kampfhelikopter_Us_Desert", "TTT_Kampfhelikopter_Us_Woodland", "TTT_Sanitaetshelikopter_Us_Desert", "TTT_Sanitaetshelikopter_Us_Woodland", "TTT_Logistikhelikopter_Us_Desert", "TTT_Logistikhelikopter_Us_Woodland", "TTT_Transporthelikopter_Us_Desert", "TTT_Transporthelikopter_Us_Woodland"];
//VVS_Support = ["TTT_Logistik_Ausruestung_Bw", "TTT_Logistik_Ausruestung_Us", "TTT_Logistik_Granaten_Bw", "TTT_Logistik_Granaten_Us", "TTT_Logistik_Medic_Bw", "TTT_Logistik_Medic_Us", "TTT_Logistik_Medic_Rucksaecke_Bw", "TTT_Logistik_Medic_Rucksaecke_Us", "TTT_Logistik_Pionierausruestung_Bw", "TTT_Logistik_Pionierausruestung_Us", "TTT_Logistik_Spezialmunition_Bw", "TTT_Logistik_Spezialmunition_Us", "TTT_Logistik_Spezialwaffen_Bw", "TTT_Logistik_Spezialwaffen_Us", "TTT_Logistik_Transportkiste_Gross_Bw", "TTT_Logistik_Transportkiste_Gross_Us", "TTT_Logistik_Transportkiste_Klein_Bw", "TTT_Logistik_Transportkiste_Klein_Us", "TTT_Logistik_Waffen_Bw", "TTT_Logistik_Waffen_Us", "TTT_Logistik_Werfer_Bw", "TTT_Logistik_Werfer_Us", "TTT_Logistik_Werfermunition_Bw"];

/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.
		
		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [];
VVS_R_Air = [];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Submarine = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];

//VVS_R_Submarine = ["B_SDV_01_F"];
//VVS_R_Autonomous = ["B_UAV_02_CAS_F","B_UAV_02_F","B_UGV_01_rcws_F","B_UGV_01_F","CUP_B_Seafox_USV_USMC","CUP_USMC_MQ9","B_UAV_01_F"];
//VVS_R_Support = ["B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_medical_F","B_Truck_01_repair_F"];