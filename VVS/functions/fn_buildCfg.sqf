/*
	File: fn_buildCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Builds our configuration arrays for vehicles to display.
	
	0: classname
	1: scope
	2: picture
	3: displayname
	4: vehicleclass
	5: side
	6: faction
*/
private["_CfgCar","_CfgAir","_CfgShip","_CfgSub","_CfgArmor"];
_Cfg = configFile >> "CfgVehicles";


//Setup our final arrays.
VVS_pre_Car = [];
VVS_pre_Air = ["B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F","B_Heli_Light_01_armed_F","B_Heli_Transport_03_F","B_Heli_Transport_03_unarmed_F","B_Heli_Light_01_F","B_Heli_Attack_01_F","B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F","B_UAV_01_F","B_UGV_01_F","B_UGV_01_rcws_F","B_UAV_02_F","B_UAV_02_CAS_F","B_Plane_CAS_01_F","B_T_VTOL_01_armed_F","B_T_VTOL_01_infantry_F","B_T_VTOL_01_vehicle_F","B_T_UAV_03_F","BWA3_Tiger_Gunpod_FZ","BWA3_Tiger_Gunpod_Heavy","BWA3_Tiger_Gunpod_PARS","BWA3_Tiger_RMK_FZ","BWA3_Tiger_RMK_Heavy","BWA3_Tiger_RMK_PARS","BWA3_Tiger_RMK_Universal","UK3CB_BAF_Apache_AH1_CAS","UK3CB_BAF_Apache_AH1","UK3CB_BAF_Apache_AH1_JS","UK3CB_BAF_Merlin_HC3_18","UK3CB_BAF_Merlin_HC3_18_GPMG","UK3CB_BAF_Merlin_HC3_24","UK3CB_BAF_Merlin_HC3_32","UK3CB_BAF_Merlin_HC3_CSAR","UK3CB_BAF_Apache_AH1_AT","UK3CB_BAF_Wildcat_AH1_CAS_6A","UK3CB_BAF_Wildcat_AH1_CAS_6B","UK3CB_BAF_Wildcat_AH1_CAS_6C","UK3CB_BAF_Wildcat_AH1_CAS_6D","UK3CB_BAF_Wildcat_AH1_HEL_6A","UK3CB_BAF_Wildcat_AH1_CAS_8A","UK3CB_BAF_Wildcat_AH1_CAS_8B","UK3CB_BAF_Wildcat_AH1_CAS_8C","UK3CB_BAF_Wildcat_AH1_CAS_8D","UK3CB_BAF_Wildcat_AH1_HEL_8A","UK3CB_BAF_Wildcat_AH1_TRN_8A","UK3CB_BAF_Wildcat_HMA2_TRN_8A","CUP_B_Mi17_CDF","CUP_B_Mi17_medevac_CDF","CUP_B_Mi17_VIV_CDF","CUP_B_Mi24_D_CDF","CUP_B_Mi24_D_MEV_CDF","CUP_B_MI6A_CDF","CUP_B_MI6T_CDF","CUP_B_Pchela1T_CDF","CUP_B_Su25_CDF","CUP_B_SU34_AGM_CDF","CUP_B_SU34_LGB_CDF","CUP_B_Mi171Sh_ACR","CUP_B_Mi171Sh_Unarmed_ACR","CUP_B_Mi35_CZ","CUP_B_Mi35_CZ_Dark","CUP_B_Mi35_CZ_Des","CUP_B_Mi35_CZ_Ram","CUP_B_Mi35_CZ_Tiger","CUP_B_L39_BMB_CZ","CUP_B_L39_CAP_CZ","CUP_B_L39_RKT_CZ","CUP_B_CH53E_GER","CUP_B_CH53E_VIV_GER","CUP_B_UH1D_GER_KSK","CUP_B_UH1D_GER_KSK_Des","CUP_B_C130J_GB","CUP_B_C130J_Cargo_GB","CUP_B_F35B_AA_BAF","CUP_B_F35B_CAS_BAF","CUP_B_F35B_LGB_BAF","CUP_B_GR9_AGM_GB","CUP_B_GR9_CAP_GB","CUP_B_GR9_GBU12_GB","CUP_B_GR9_Mk82_GB","CUP_B_AH1_BAF","CUP_B_AH1_AT_BAF","CUP_B_AH1_NO_BAF","CUP_B_AH1_ES_BAF","CUP_B_AH1_MR_BAF","CUP_B_AW159_Cannon_GB","CUP_B_AW159_Hellfire_GB","CUP_B_AW159_Unarmed_GB","CUP_B_AW159_Cannon_RN_Blackcat","CUP_B_AW159_Hellfire_RN_Blackcat","CUP_B_Wildcat_Unarmed_RN_Blackcat","CUP_B_AW159_Cannon_RN_Grey","CUP_B_AW159_Hellfire_RN_Grey","CUP_B_CH47F_GB","CUP_B_CH47F_VIV_GB","CUP_B_Merlin_HC3_GB","CUP_B_Merlin_HC3_Armed_GB","CUP_B_Merlin_HC3_VIV_GB","CUP_B_Merlin_HC3A_GB","CUP_B_Merlin_HC3A_Armed_GB","CUP_B_Merlin_HC4_GB","CUP_B_SA330_Puma_HC1_BAF","CUP_B_SA330_Puma_HC2_BAF","CUP_B_AH6X_USA","CUP_B_AH64D_USA","CUP_B_AH64D_AT_USA","CUP_B_AH64D_NO_USA","CUP_B_AH64D_ES_USA","CUP_B_AH64D_MR_USA","CUP_B_AH6J_AT_USA","CUP_B_AH6J_Escort19_USA","CUP_B_AH6J_Escort_USA","CUP_B_AH6J_MP_USA","CUP_B_CH47F_USA","CUP_B_CH47F_VIV_USA","CUP_B_MH6J_USA","CUP_B_UH60L_US","CUP_B_UH60L_FFV_US","CUP_B_UH60L_Unarmed_US","CUP_B_UH60L_Unarmed_FFV_US","CUP_B_UH60L_Unarmed_FFV_MEV_US","CUP_B_UH60M_US","CUP_B_UH60M_FFV_US","CUP_B_UH60M_Unarmed_US","CUP_B_UH60M_Unarmed_FFV_US","CUP_B_UH60M_Unarmed_FFV_MEV_US","CUP_B_A10_AT_USA","CUP_B_A10_CAS_USA","CUP_B_AC47_Spooky_USA","CUP_B_C47_USA","CUP_B_USMC_MQ9","CUP_B_AH1Z_AT_USMC","CUP_B_AH1Z_7RndHydra_USMC","CUP_B_AH1Z_USMC","CUP_B_AH1Z_14RndHydra_USMC","CUP_B_AH1Z_Escort_USMC","CUP_B_AH1Z_NoWeapons_USMC","CUP_B_AH1Z_NOAA_USMC","CUP_B_CH53E_USMC","CUP_B_CH53E_VIV_USMC","CUP_B_MH60S_USMC","CUP_B_MH60S_FFV_USMC","CUP_B_UH1Y_GUNSHIP_USMC","CUP_B_UH1Y_MEV_USMC","CUP_B_UH1Y_UNA_USMC","CUP_B_AV8B_AGM_USMC","CUP_B_AV8B_CAP_USMC","CUP_B_AV8B_GBU12_USMC","CUP_B_AV8B_MK82_USMC","CUP_B_C130J_USMC","CUP_B_C130J_Cargo_USMC","CUP_B_F35B_AA_USMC","CUP_B_F35B_CAS_USMC","CUP_B_F35B_LGB_USMC","CUP_B_MV22_USMC","CUP_B_MV22_USMC_RAMPGUN","CUP_B_MV22_VIV_USMC","rhsgref_b_mi24g_CAS","rhsgref_b_mi24g_FAB","rhsgref_b_mi24g_UPK23","rhsgref_cdf_b_Mi35","rhsgref_cdf_b_Mi35_UPK","rhsgref_cdf_b_reg_Mi8amt","rhsgref_cdf_b_reg_Mi17Sh","RHS_AN2_B","rhs_l159_cdf_b_CDF_CAP","rhs_l159_cdf_b_CDF_CAS","rhs_l159_cdf_b_CDF_plamen","rhs_l159_cdf_b_CDF","rhs_l39_cdf_b_cdf","rhsgref_cdf_b_su25","RHS_AH64D_AA","RHS_AH64D_CS","RHS_AH64D_GS","RHS_AH64D","RHS_AH64DGrey","RHS_CH_47F_10","RHS_CH_47F_light","RHS_UH60M_d","RHS_UH60M_MEV2_d","RHS_UH60M_MEV_d","RHS_AH64D_wd_AA","RHS_AH64D_wd_CS","RHS_AH64D_wd_GS","RHS_AH64D_wd","RHS_CH_47F","RHS_UH60M","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_MELB_AH6M_H","RHS_MELB_AH6M_L","RHS_MELB_AH6M_M","RHS_MELB_MH6M","RHS_MELB_H6M","RHS_A10_AT","RHS_A10","RHS_C130J","rhsusf_f22","RHS_AH1Z_CS","RHS_AH1Z_GS","RHS_AH1Z","rhsusf_CH53E_USMC_D","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_d_GS","RHS_UH1Y_UNARMED_d","RHS_AH1Z_wd_CS","RHS_AH1Z_wd_GS","RHS_AH1Z_wd","rhsusf_CH53E_USMC","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_GS","RHS_UH1Y_UNARMED","O_UAV_01_F","O_UGV_01_F","O_UGV_01_rcws_F","O_UAV_02_F","O_UAV_02_CAS_F","O_Heli_Light_02_F","O_Heli_Light_02_v2_F","O_Heli_Light_02_unarmed_F","CUP_O_Ka60_GL_Blk_CSAT","CUP_O_Ka60_Blk_CSAT","CUP_O_Ka60_GL_Hex_CSAT","CUP_O_Ka60_Hex_CSAT","CUP_O_Ka60_GL_Whale_CSAT","CUP_O_Ka60_Whale_CSAT","O_Heli_Transport_04_F","O_Heli_Transport_04_ammo_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_medevac_F","O_Heli_Transport_04_repair_F","O_Heli_Transport_04_covered_F","O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","CUP_O_SU34_AGM_CSAT","CUP_O_SU34_LGB_CSAT","O_Plane_CAS_02_F","O_T_UAV_04_CAS_F","O_T_UGV_01_ghex_F","O_T_UGV_01_rcws_ghex_F","O_T_VTOL_02_infantry_F","O_T_VTOL_02_vehicle_F","CUP_O_MI6A_CHDKZ","CUP_O_MI6T_CHDKZ","CUP_O_Mi8_medevac_CHDKZ","CUP_O_Mi8_VIV_CHDKZ","CUP_O_Mi8_CHDKZ","CUP_O_Pchela1T_RU","CUP_O_Ka50_AA_RU","CUP_O_Ka50_RU","CUP_O_Ka52_RU","CUP_O_Ka52_Blk_RU","CUP_O_Ka52_GreyCamo_RU","CUP_O_Ka52_Grey_RU","CUP_O_Ka60_Grey_RU","CUP_O_Mi24_P_RU","CUP_O_Mi24_V_RU","CUP_O_MI6A_RU","CUP_O_MI6T_RU","CUP_O_Mi8_medevac_RU","CUP_O_Mi8_VIV_RU","CUP_O_Mi8_RU","CUP_O_Su25_RU_3","CUP_O_Su25_RU_1","CUP_O_Su25_RU_2","CUP_O_SU34_AGM_RU","CUP_O_SU34_LGB_RU","CUP_O_Ka50_AA_SLA","CUP_O_Ka50_SLA","CUP_O_Mi8_VIV_SLA","CUP_O_Mi8_SLA_1","CUP_O_Mi8_SLA_2","CUP_O_UH1H_SLA","CUP_O_C47_SLA","CUP_O_Su25_SLA","CUP_O_SU34_AGM_SLA","CUP_O_SU34_LGB_SLA","CUP_O_Mi17_TK","CUP_O_Mi17_VIV_TK","CUP_O_Mi24_D_TK","CUP_O_MI6A_TKA","CUP_O_MI6T_TKA","CUP_O_UH1H_TKA","CUP_O_AN2_TK","CUP_O_C130J_TKA","CUP_O_C130J_Cargo_TKA","CUP_O_L39_BMB_TK","CUP_O_L39_CAP_TK","CUP_O_L39_RKT_TK","CUP_O_Su25_TKA","rhsgref_ins_Mi8amt","RHS_Mi24P_AT_vdv","RHS_Mi24P_CAS_vdv","RHS_Mi24P_vdv","RHS_Mi24V_AT_vdv","RHS_Mi24V_vdv","RHS_Mi24V_FAB_vdv","RHS_Mi24V_UPK23_vdv","RHS_Mi8AMT_vdv","RHS_Mi8mt_vdv","RHS_Mi8mt_Cargo_vdv","RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_FAB_vdv","RHS_Mi8MTV3_UPK23_vdv","RHS_Mi8mt_vv","RHS_Mi8mt_Cargo_vv","rhs_pchela1t_vvsc","RHS_Ka52_vvsc","RHS_Ka52_UPK23_vvsc","rhs_ka60_c","RHS_Mi24P_AT_vvsc","RHS_Mi24P_CAS_vvsc","RHS_Mi24P_CAS_vvsc","RHS_Mi24P_vvsc","RHS_Mi24V_AT_vvsc","RHS_Mi24V_vvsc","RHS_Mi24V_FAB_vvsc","RHS_Mi24V_UPK23_vvsc","RHS_Mi24Vt_vvsc","RHS_Mi8AMT_vvsc","RHS_Mi8mt_Cargo_vvsc","RHS_Mi8MTV3_vvsc","RHS_Mi8MTV3_FAB_vvsc","RHS_Mi8MTV3_UPK23_vvsc","RHS_Su25SM_vvsc","RHS_Su25SM_CAS_vvsc","RHS_Su25SM_KH29_vvsc","rhs_pchela1t_vvs","RHS_Ka52_vvs","RHS_Ka52_UPK23_vvs","rhs_ka60_grey","RHS_Mi24P_AT_vvs","RHS_Mi24P_CAS_vvs","RHS_Mi24P_vvs","RHS_Mi24V_AT_vvs","RHS_Mi24V_vvs","RHS_Mi24V_FAB_vvs","RHS_Mi24V_UPK23_vvs","RHS_Mi24Vt_vvs","RHS_Mi8AMT_vvs","RHS_Mi8AMTSh_vvs","RHS_Mi8AMTSh_FAB_vvs","RHS_Mi8AMTSh_UPK23_vvs","RHS_Mi8mt_vvs","RHS_Mi8mt_Cargo_vvs","RHS_Mi8MTV3_vvs","RHS_Mi8MTV3_FAB_vvs","RHS_Mi8MTV3_UPK23_vvs","RHS_Su25SM_vvs","RHS_Su25SM_CAS_vvs","RHS_Su25SM_KH29_vvs","RHS_T50_vvs_generic","RHS_T50_vvs_051","RHS_T50_vvs_052","RHS_T50_vvs_053","RHS_T50_vvs_054","RHS_T50_vvs_blueonblue","I_UAV_01_F","I_UGV_01_F","I_UGV_01_rcws_F","I_UAV_02_F","I_UAV_02_CAS_F","CUP_I_AH1Z_AT_AAF","CUP_I_AH1Z_AAF","CUP_I_AH1Z_Escort_AAF","I_Heli_Transport_02_F","CUP_B_Wildcat_Cannon_Armed_Digital_AAF","CUP_B_Wildcat_Hellfire_Armed_Digital_AAF","CUP_B_Wildcat_Unarmed_Digital_AAF","CUP_B_Wildcat_Cannon_Armed_Green_AAF","CUP_B_Wildcat_Hellfire_Armed_Green_AAF","CUP_B_Wildcat_Unarmed_Green_AAF","I_Heli_light_03_F","I_Heli_light_03_unarmed_F","CUP_I_Ka60_GL_Digi_AAF","CUP_I_Ka60_Digi_AAF","CUP_I_Mi24_Mk3_AT_AAF","CUP_I_Mi24_Mk3_FAB_AAF","CUP_I_Mi24_Mk3_Empty_AAF","CUP_I_Mi24_Mk3_AAF","CUP_I_Mi24_Mk3_S8_GSh_AAF","CUP_I_Mi24_Mk4_AT_AAF","CUP_I_Mi24_Mk4_FAB_AAF","CUP_I_Mi24_Mk4_Empty_AAF","CUP_I_Mi24_Mk4_AAF","CUP_I_Mi24_Mk4_S8_GSh_AAF","CUP_I_Mi24_D_AAF","CUP_I_AV8B_AGM_AAF","CUP_I_AV8B_CAP_AAF","CUP_I_AV8B_GBU12_AAF","CUP_I_AV8B_MK82_AAF","CUP_I_C130J_AAF","CUP_I_C130J_Cargo_AAF","I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F","CUP_I_L39_BMB_AAF","CUP_I_L39_CAP_AAF","CUP_I_L39_RKT_AAF","CUP_I_SU34_AGM_AAF","CUP_I_SU34_LGB_AAF","rhsgref_ins_g_Mi8amt","rhsgref_mi24g_CAS","rhsgref_mi24g_FAB","rhsgref_mi24g_UPK23","rhsgref_cdf_Mi35","rhsgref_cdf_Mi35_UPK","rhsgref_cdf_reg_Mi8amt","rhsgref_cdf_reg_Mi17Sh","RHS_AN2","rhs_l159_CDF_CAP","rhs_l159_CDF_CAS","rhs_l159_CDF_plamen","rhs_l159_CDF","rhs_l39_cdf","rhsgref_cdf_su25","rhsgref_un_Mi24V","rhsgref_un_Mi24V_UPK","rhsgref_un_Mi8amt","CUP_I_Ka60_GL_Blk_ION","CUP_I_Ka60_Blk_ION","CUP_I_Mi24_Mk3_AT_ION","CUP_I_Mi24_Mk3_FAB_ION","CUP_I_Mi24_Mk3_Empty_ION","CUP_I_Mi24_Mk3_ION","CUP_I_Mi24_Mk3_S8_GSh_ION","CUP_I_Mi24_Mk4_AT_ION","CUP_I_Mi24_Mk4_FAB_ION","CUP_I_Mi24_Mk4_Empty_ION","CUP_I_Mi24_Mk4_ION","CUP_I_Mi24_Mk4_S8_GSh_ION","CUP_I_Mi24_D_ION","CUP_I_AH6J_AT_RACS","CUP_I_AH6J_Escort19_RACS","CUP_I_AH6J_Escort_RACS","CUP_I_AH6J_MP_RACS","CUP_I_MH6J_RACS","CUP_I_SA330_Puma_HC1_RACS","CUP_I_SA330_Puma_HC2_RACS","CUP_I_UH60L_RACS","CUP_I_UH60L_FFV_RACS","CUP_I_UH60L_Unarmed_RACS","CUP_I_UH60L_Unarmed_FFV_Racs","CUP_I_UH60L_Unarmed_FFV_MEV_Racs","CUP_I_C130J_RACS","CUP_I_C130J_Cargo_RACS","I_C_Heli_Light_01_civil_F","I_C_Plane_Civil_01_F","CUP_I_UH1H_TK_GUE","CUP_I_Mi17_UN","CUP_I_Mi17_VIV_UN","CUP_I_Mi24_D_UN","RHS_Mi8amt_civilian","C_Heli_Light_01_civil_F","CUP_C_C47_CIV","C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F","CUP_C_DC3_CIV","CUP_C_DC3_TanoAir_CIV","CUP_C_AN2_CIV","CUP_C_Mi17_Civilian_RU","CUP_C_Mi17_VIV_RU","CUP_C_MI6A_RU","CUP_C_MI6T_RU","CUP_C_AN2_AEROSCHROT_TK_CIV","CUP_C_AN2_AIRTAK_TK_CIV"];
VVS_pre_Ship = [];
VVS_pre_Armored = ["B_APC_Tracked_01_AA_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F","B_MBT_01_mlrs_F","B_MBT_01_arty_F","B_MBT_01_TUSK_F","B_MBT_01_cannon_F","B_T_APC_Tracked_01_AA_F","B_T_APC_Wheeled_01_cannon_F","B_T_APC_Tracked_01_rcws_F","B_T_APC_Tracked_01_CRV_F","B_T_MBT_01_mlrs_F","B_T_MBT_01_arty_F","B_T_MBT_01_TUSK_F","B_T_MBT_01_cannon_F","BWA3_Puma_Fleck","BWA3_Puma_Tropen","BWA3_Leopard2A6M_Fleck","BWA3_Leopard2A6M_Tropen","rsr_gepard_flecktarn","rsr_bergepanzer_flecktarn","rsr_panzerhaubitze_flecktarn","rsr_gepard_tropentarn","rsr_bergepanzer_tropentarn","rsr_panzerhaubitze_tropentarn","CUP_B_ZSU23_CDF","CUP_B_BMP2_CDF","CUP_B_BMP_HQ_CDF","CUP_B_BMP2_AMB_CDF","CUP_B_BRDM2_CDF","CUP_B_BRDM2_ATGM_CDF","CUP_B_BRDM2_HQ_CDF","CUP_B_BTR60_CDF","CUP_B_BM21_CDF","CUP_B_T72_CDF","CUP_B_BMP2_CZ","CUP_B_BMP2_CZ_Des","CUP_B_BMP_HQ_CZ","CUP_B_BMP_HQ_CZ_Des","CUP_B_BMP2_AMB_CZ","CUP_B_BMP2_AMB_CZ_Des","CUP_B_BRDM2_CZ","CUP_B_BRDM2_CZ_Des","CUP_B_BRDM2_HQ_CZ","CUP_B_BRDM2_HQ_Des","CUP_B_T72_CZ","CUP_B_FV432_Bulldog_GB_D_RWS","CUP_B_FV432_Bulldog_GB_W_RWS","CUP_B_FV432_Bulldog_GB_D","CUP_B_FV432_Bulldog_GB_W","CUP_B_FV510_GB_D","CUP_B_FV510_GB_D_SLAT","CUP_B_FV510_GB_W_SLAT","CUP_B_FV510_GB_W","CUP_B_MCV80_GB_D","CUP_B_MCV80_GB_D_SLAT","CUP_B_MCV80_GB_W_SLAT","CUP_B_MCV80CUP_B_M163_USA","CUP_B_M6LineBacker_USA_D","CUP_B_M6LineBacker_USA_W","CUP_B_M1128_MGS_Desert_Slat","CUP_B_M1128_MGS_Desert","CUP_B_M1128_MGS_Woodland_Slat","CUP_B_M1135_ATGMV_Desert_Slat","CUP_B_M1128_MGS_Woodland","CUP_B_M1135_ATGMV_Desert","CUP_B_M1135_ATGMV_Woodland_Slat","CUP_B_M1135_ATGMV_Woodland","CUP_B_M113_USA","CUP_B_M113_Med_USA","CUP_B_M2Bradley_USA_D","CUP_B_M2Bradley_USA_W","CUP_B_M2A3Bradley_USA_D","CUP_B_M2A3Bradley_USA_W","CUP_B_M7Bradley_USA_D","CUP_B_M1129_MC_MK19_Desert_Slat","CUP_B_M1129_MC_MK19_Desert","CUP_B_M1129_MC_MK19_Woodland_Slat","CUP_B_M1129_MC_MK19_Woodland","CUP_B_M270_DPICM_USA","CUP_B_M270_HE_USA","CUP_B_M1A1_DES_US_Army","CUP_B_M1A1_Woodland_US_Army","CUP_B_M1A2_TUSK_MG_DES_US_Army","CUP_B_M1A2_TUSK_MG_US_Army","CUP_B_AAV_USMC","CUP_B_LAV25_USMC","CUP_B_LAV25M240_USMC","CUP_B_LAV25_HQ_USMC","CUP_B_M270_DPICM_USMC","CUP_B_M270_HE_USMC","CUP_B_M1A1_DES_USMC","CUP_B_M1A2_TUSK_MG_DES_USMC","CUP_B_M1A2_TUSK_MG_DES_USMC","CUP_B_M1A2_TUSK_MG_USMC_GB_W","rhsgref_cdf_b_zsu234","rhsgref_cdf_b_btr60","rhsgref_cdf_b_btr70","rhsgref_cdf_b_bmd1","rhsgref_cdf_b_bmd1k","rhsgref_cdf_b_bmd1p","rhsgref_cdf_b_bmd1pk","rhsgref_cdf_b_bmd2","rhsgref_cdf_b_bmd2k","rhsgref_cdf_b_bmp1","rhsgref_cdf_b_bmp1d","rhsgref_cdf_b_bmp1k","rhsgref_cdf_b_bmp1p","rhsgref_cdf_b_bmp2e","rhsgref_cdf_b_bmp2","rhsgref_cdf_b_bmp2d","rhsgref_cdf_b_bmp2k","rhsgref_BRDM2_b","rhsgref_BRDM2_ATGM_b","rhsgref_BRDM2UM_b","rhsgref_BRDM2_HQ_b","rhsgref_cdf_b_t72ba_tv","rhsusf_m113d_usarmy_supply","rhsusf_m113d_usarmy","rhsusf_m113d_usarmy_M240","rhsusf_m113d_usarmy_medical","rhsusf_m113d_usarmy_MK19","rhsusf_m113d_usarmy_unarmed","rhsusf_m109d_usarmy","RHS_M2A2","RHS_M2A2_BUSKI","RHS_M2A3","RHS_M2A3_BUSKI","RHS_M6","rhsusf_M1117_D","rhsusf_M1117_O","rhsusf_rg33_d","rhsusf_rg33_m2_d","rhsusf_m1a1aimd_usarmy","rhsusf_m1a1aim_tuski_d","rhsusf_m1a2sep1d_usarmy","rhsusf_m1a2sep1tuskid_usarmy","rhsusf_m113_usarmy_supply","rhsusf_m113_usarmy","rhsusf_m113_usarmy_M240","rhsusf_m113_usarmy_medical","rhsusf_m113_usarmy_MK19","rhsusf_m113_usarmy_unarmed","rhsusf_m109_usarmy","RHS_M2A2_wd","RHS_M2A2_BUSKI_WD","RHS_M2A3_wd","RHS_M2A3_BUSKI_wd","RHS_M6_wd","rhsusf_M1117_W","rhsusf_rg33_wd","rhsusf_rg33_m2_wd","rhsusf_m1a1aimwd_usarmy","rhsusf_m1a1aim_tuski_wd","rhsusf_m1a2sep1wd_usarmy","rhsusf_m1a2sep1tuskiwd_usarmy","rhsusf_m1a2sep1tuskiiwd_usarmy","rhsusf_rg33_usmc_d","rhsusf_rg33_m2_usmc_d","rhsusf_m1a1fep_d","rhsusf_rg33_usmc_wd","rhsusf_rg33_m2_usmc_wd","rhsusf_m1a1fep_wd","rhsusf_m1a1fep_od","rhsusf_m1a1hc_wd","CUP_O_ZSU23_CSAT","O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT","CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT","CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F","O_T_APC_Tracked_02_AA_ghex_F","O_T_APC_Tracked_02_cannon_ghex_F","O_T_APC_Wheeled_02_rcws_ghex_F","O_T_MBT_02_arty_ghex_F","O_T_MBT_02_cannon_ghex_F","CUP_O_ZSU23_ChDKZ","CUP_O_BMP2_CHDKZ","CUP_O_BMP_HQ_CHDKZ","CUP_O_BMP2_AMB_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BRDM2_ATGM_CHDKZ","CUP_O_BRDM2_HQ_CHDKZ","CUP_O_BM21_CHDKZ","CUP_O_T72_CHDKZ","CUP_O_2S6M_RU","CUP_O_BMP2_RU","CUP_O_BMP_HQ_RU","CUP_O_BMP2_AMB_RU","CUP_O_BMP3_RU","CUP_O_BRDM2_RUS","CUP_O_BRDM2_ATGM_RUS","CUP_O_BRDM2_HQ_RUS","CUP_O_BTR90_RU","CUP_O_BTR90_HQ_RU","CUP_O_GAZ_Vodnik_PK_RU","CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_GAZ_Vodnik_BPPU_RU","CUP_O_GAZ_Vodnik_MedEvac_RU","CUP_O_BM21_RU","CUP_O_T72_RU","CUP_O_ZSU23_SLA","CUP_O_BMP2_SLA","CUP_O_BMP_HQ_sla","CUP_O_BMP2_AMB_sla","CUP_O_BRDM2_SLA","CUP_O_BRDM2_ATGM_SLA","CUP_O_BRDM2_HQ_SLA","CUP_O_BTR60_SLA","CUP_O_BM21_SLA","CUP_O_T72_SLA","CUP_O_ZSU23_TK","CUP_O_BMP1_TKA","CUP_O_BMP1P_TKA","CUP_O_BMP2_TKA","CUP_O_BMP_HQ_TKA","CUP_O_BMP2_AMB_TKA","CUP_O_BMP2_ZU_TKA","CUP_O_BRDM2_TKA","CUP_O_BRDM2_ATGM_TKA","CUP_O_BRDM2_HQ_TKA","CUP_O_BTR40_MG_TKA","CUP_O_BTR40_TKA","CUP_O_BTR60_TK","CUP_O_M113_TKA","CUP_O_M113_Med_TKA","CUP_O_BM21_TKA","CUP_O_T34_TKA","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_BTR40_MG_TKM","CUP_O_BTR40_TKM","rhsgref_ins_zsu234","rhsgref_ins_btr60","rhsgref_ins_btr70","rhsgref_ins_bmd1","rhsgref_ins_bmd1p","rhsgref_ins_bmd2","rhsgref_ins_bmp1","rhsgref_ins_bmp1d","rhsgref_ins_bmp1k","rhsgref_ins_bmp1p","rhsgref_ins_bmp2e","rhsgref_ins_bmp2","rhsgref_ins_bmp2d","rhsgref_ins_bmp2k","rhsgref_BRDM2_ins","rhsgref_BRDM2_ATGM_ins","rhsgref_BRDM2UM_ins","rhsgref_BRDM2_HQ_ins","rhsgref_ins_t72ba","rhsgref_ins_t72bb","rhsgref_ins_t72bc","rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhsgref_BRDM2_msv","rhsgref_BRDM2_ATGM_msv","rhsgref_BRDM2UM_msv","rhsgref_BRDM2_HQ_msv","rhs_9k79","rhs_9k79_K","rhs_9k79_B","rhs_2s3_tv","rhs_bmp1_tv","rhs_bmp1d_tv","rhs_bmp1k_tv","rhs_bmp1p_tv","rhs_bmp2e_tv","rhs_bmp2_tv","rhs_bmp2d_tv","rhs_bmp2k_tv","rhs_brm1k_tv","rhs_prp3_tv","rhs_t72ba_tv","rhs_t72bb_tv","rhs_t72bc_tv","rhs_t72bd_tv","rhs_t80","rhs_t80a","rhs_t80b","rhs_t80bk","rhs_t80bv","rhs_t80bvk","rhs_t80u","rhs_t80u45m","rhs_t80ue1","rhs_t80uk","rhs_t80um","rhs_t90_tv","rhs_t90a_tv","rhs_btr60_vdv","rhs_btr70_vdv","rhs_btr80_vdv","rhs_btr80a_vdv","rhs_bmd1","rhs_bmd1k","rhs_bmd1p","rhs_bmd1pk","rhs_bmd1r","rhs_bmd2","rhs_bmd2k","rhs_bmd2m","rhs_bmd4_vdv","rhs_bmd4m_vdv","rhs_bmd4ma_vdv","rhs_bmp1_vdv","rhs_bmp1d_vdv","rhs_bmp1k_vdv","rhs_bmp1p_vdv","rhs_bmp2e_vdv","rhs_bmp2_vdv","rhs_bmp2d_vdv","rhs_bmp2k_vdv","rhs_brm1k_vdv","rhs_prp3_vdv","rhsgref_BRDM2_vdv","rhsgref_BRDM2_ATGM_vdv","rhsgref_BRDM2UM_vdv","rhsgref_BRDM2_HQ_vdv","rhs_sprut_vdv","rhs_btr60_vmf","rhs_btr70_vmf","rhs_btr80_vmf","rhs_btr80a_vmf","rhs_pts_vmf","rhs_bmp1_vmf","rhs_bmp1d_vmf","rhs_bmp1k_vmf","rhs_bmp1p_vmf","rhs_bmp2e_vmf","rhs_bmp2_vmf","rhs_bmp2d_vmf","rhs_bmp2k_vmf","rhs_brm1k_vmf","rhs_prp3_vmf","rhsgref_BRDM2_vmf","rhsgref_BRDM2_ATGM_vmf","rhsgref_BRDM2UM_vmf","rhsgref_BRDM2_HQ_vmf","rhs_zsu234_aa","rhs_btr60_vv","rhs_btr70_vv","rhs_btr80_vv","rhs_btr80a_vv","rhs_bmp1_vv","rhs_bmp1d_vv","rhs_bmp1k_vv","rhs_bmp1p_vv","rhs_bmp2e_vv","rhs_bmp2_vv","rhs_bmp2d_vv","rhs_bmp2k_vv","rhs_brm1k_vv","rhs_prp3_vv","CUP_I_M163_AAF","CUP_I_ZSU23_AAF","I_APC_tracked_03_cannon_F","CUP_I_M113_AAF","CUP_I_M113_Med_AAF","I_APC_Wheeled_03_cannon_F","CUP_I_M270_DPICM_AAF","CUP_I_M270_HE_AAF","I_MBT_03_cannon_F","CUP_I_BMP2_NAPA","CUP_I_BMP_HQ_NAPA","CUP_I_BMP2_AMB_NAPA","CUP_I_BRDM2_NAPA","CUP_I_BRDM2_ATGM_NAPA","CUP_I_BRDM2_HQ_NAPA","CUP_I_T34_NAPA","CUP_I_T72_NAPA","CUP_I_BMP1_TK_GUE","CUP_I_BRDM2_TK_Gue","CUP_I_BRDM2_ATGM_TK_Gue","CUP_I_BRDM2_HQ_TK_Gue","CUP_I_BTR40_MG_TKG","CUP_I_BTR40_TKG","CUP_I_T34_TK_GUE","CUP_I_T55_TK_GUE","CUP_I_BMP2_UN","CUP_I_BMP_HQ_UN","CUP_I_BMP2_AMB_UN","CUP_I_BRDM2_UN","CUP_I_BRDM2_HQ_UN","CUP_I_BTR60_UN","CUP_I_M113_UN","CUP_I_M113_Med_UN","CUP_I_AAV_RACS","CUP_I_M113_RACS","CUP_I_M113_Med_RACS","CUP_I_T72_RACS","CUP_I_M163_RACS","rhsgref_ins_g_zsu234","rhsgref_ins_g_btr60","rhsgref_ins_g_btr70","rhsgref_ins_g_bmd1","rhsgref_ins_g_bmd1p","rhsgref_ins_g_bmd2","rhsgref_ins_g_bmp1","rhsgref_ins_g_bmp1d","rhsgref_ins_g_bmp1k","rhsgref_ins_g_bmp1p","rhsgref_ins_g_bmp2e","rhsgref_ins_g_bmp2","rhsgref_ins_g_bmp2d","rhsgref_ins_g_bmp2k","rhsgref_BRDM2_ins_g","rhsgref_BRDM2_ATGM_ins_g","rhsgref_BRDM2UM_ins_g","rhsgref_BRDM2_HQ_ins_g","rhsgref_ins_g_t72ba","rhsgref_ins_g_t72bb","rhsgref_ins_g_t72bc","rhsgref_cdf_zsu234","rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1k","rhsgref_cdf_bmd1p","rhsgref_cdf_bmd1pk","rhsgref_cdf_bmd2","rhsgref_cdf_bmd2k","rhsgref_cdf_bmp1","rhsgref_cdf_bmp1d","rhsgref_cdf_bmp1k","rhsgref_cdf_bmp1p","rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2","rhsgref_cdf_bmp2d","rhsgref_cdf_bmp2k","rhsgref_BRDM2","rhsgref_BRDM2_ATGM","rhsgref_BRDM2UM","rhsgref_BRDM2_HQ","rhsgref_cdf_t72ba_tv","rhsgref_un_btr70","rhsgref_un_m1117","rhs_bmd1_chdkz","rhs_bmd2_chdkz","rhsgref_nat_btr70"];
VVS_pre_Submarine = ["TTT_IMV_MG_BW_Tropentarn", "TTT_IMV_MG_BW_Flecktarn", "TTT_IMV_GL_BW_Tropentarn", "TTT_IMV_GL_BW_Flecktarn", "TTT_LUV_COM_BW_Tropentarn", "TTT_LUV_COM_BW_Flecktarn", "TTT_IFV_BW_Tropentarn", "TTT_IFV_BW_Flecktarn", "TTT_MBT_BW_Tropentarn", "TTT_MBT_BW_Flecktarn", "TTT_IMV_MG_US_Desert", "TTT_IMV_MG_US_Woodland",  "TTT_IMV_GL_US_Desert", "TTT_IMV_GL_US_Woodland", "TTT_LUV_COM_US_Desert", "TTT_LUV_COM_US_Woodland", "TTT_IFV_US_Desert", "TTT_IFV_US_Woodland", "TTT_MBT_US_Desert", "TTT_MBT_US_Woodland"];
VVS_pre_Autonomous = ["TTT_AH_BW_Tropentarn", "TTT_AH_BW_Flecktarn", "TTT_MTA_SAR_BW_Tropentarn", "TTT_MTA_SAR_BW_Flecktarn", "TTT_MTA_Heavy_BW_Tropentarn", "TTT_MTA_Heavy_BW_Flecktarn", "TTT_MTA_Medium_BW_Tropentarn", "TTT_MTA_Medium_BW_Flecktarn", "TTT_AH_US_Desert", "TTT_MBT_US_Woodland", "TTT_MTA_SAR_US_Desert", "TTT_MTA_SAR_US_Woodland", "TTT_MTA_Heavy_US_Desert", "TTT_MTA_Heavy_US_Woodland", "TTT_MTA_Medium_US_Desert", "TTT_MTA_Medium_US_Woodland"];
VVS_pre_Support = ["TTT_Crate_Equipment_BW", "TTT_Crate_Equipment_US", "TTT_Crate_Ammo_Grenade_BW", "TTT_Crate_Ammo_Grenade_US", "TTT_Crate_Medic_Backpack_BW", "TTT_Crate_Ammo_Luncher_US", "TTT_Crate_Medic_Doctor_BW", "TTT_Crate_Medic_Backpack_US", "TTT_Crate_Equipment_Pioneer_BW", "TTT_Crate_Equipment_Pioneer_US", "TTT_Crate_Ammo_Special_BW", "TTT_Crate_Ammo_Special_US", "TTT_Crate_Weapons_Special_BW", "TTT_Crate_Weapons_Special_US", "TTT_Crate_Large_BW", "TTT_Crate_Large_US", "TTT_Crate_Small_BW", "TTT_Crate_Small_US", "TTT_Crate_Weapons_BW", "TTT_Crate_Weapons_US", "TTT_Crate_Weapons_Luncher_BW", "TTT_Crate_Weapons_Luncher_US", "TTT_Crate_Ammo_Luncher_BW"];

//Skim over and make sure VVS_x isn't built for a pre-made vehicle list.
if(count VVS_Car > 0) then {VVS_pre_Car = VVS_Car;};
if(count VVS_Air > 0) then {VVS_pre_Car = VVS_Air;};
if(count VVS_Ship > 0) then {VVS_pre_Car = VVS_Ship;};
if(count VVS_Submarine > 0) then {VVS_pre_Car = VVS_Submarine;};
if(count VVS_Armored > 0) then {VVS_pre_Car = VVS_Armored;};
if(count VVS_Autonomous > 0) then {VVS_pre_Autonomous = VVS_Autonomous;};
if(count VVS_Support > 0) then {VVS_pre_Support = VVS_Support;};

if(VVS_Premade_List) exitWith {}; //No need to waste CPU processing time as the mission designer already setup a list.

for "_i" from 0 to (count _Cfg)-1 do
{
	_class = _Cfg select _i;
	if(isClass _class) then
	{
		_className = configName _class;
		if(_className != "") then
		{
		//	systemChat _className;
			_cfgInfo = [_className] call VVS_fnc_cfgInfo;
			//systemChat str(_cfgInfo);
			if(count _cfgInfo > 0) then
			{
				_scope = _cfgInfo select 1;
				_picture = _cfgInfo select 2;
				_displayName = _cfgInfo select 3;
				_vehicleClass = _cfgInfo select 4;
				_side = _cfgInfo select 5;	
				_superClass = _cfgInfo select 7;
				if(_scope >= 2 && _picture != "" && _displayName != "" && _vehicleClass in ["Car","Ship","Air","Armored","Submarine","Autonomous","Support"] && !(_className in VVS_R_Car) && !(_superClass in VVS_R_Car)
				&& !(_className in VVS_R_Air) && !(_superClass in VVS_R_Air)
				&& !(_className in VVS_R_Ship) && !(_superClass in VVS_R_Ship)
				&& !(_className in VVS_R_Submarine) && !(_superClass in VVS_R_Submarine)
				&& !(_className in VVS_R_Armored) && !(_superClass in VVS_R_Armored)
				&& !(_className in VVS_R_Autonomous) && !(_superClass in VVS_R_Autonomous)
				&& !(_className in VVS_R_Support) && !(_superClass in VVS_R_Support)
				) then
				{
					switch(_vehicleClass) do
					{
						case "Car": 
						{
							if(count VVS_Car == 0) then 
							{
								VVS_pre_Car set[count VVS_pre_Car,_className];
							}
						};
						
						case "Air":
						{
							if(count VVS_Air == 0) then 
							{
								VVS_pre_Air set[count VVS_pre_Air,_className];
							};
						};
						
						case "Ship":
						{
							if(count VVS_Ship == 0) then 
							{
								VVS_pre_Ship set[count VVS_pre_Ship,_className];
							};
						};
						
						case "Submarine":
						{
							if(count VVS_Submarine == 0) then 
							{
								VVS_pre_Submarine set[count VVS_pre_Submarine,_className];
							};
						};
						
						case "Armored":
						{
							if(count VVS_Armored == 0) then 
							{
								VVS_pre_Armored set[count VVS_pre_Armored,_className];
							};
						};
						
						case "Autonomous":
						{
							if(count VVS_Autonomous == 0) then
							{
								VVS_pre_Autonomous set[count VVS_pre_Autonomous,_className];
							};
						};
						
						case "Support":
						{
							if(count VVS_Support == 0) then
							{
								VVS_pre_Support set[count VVS_pre_Support,_className];
							};
						};
					};
				};
			};
		};
	};
};