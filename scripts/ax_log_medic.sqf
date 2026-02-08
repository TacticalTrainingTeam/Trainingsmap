// Fills given object with a list of items

params ["_containers"];
// Kiste befüllen
[
    [_containers],
    [
        ["ACE_fieldDressing", 270],
        ["ACE_elasticBandage", 90],
        ["ACE_packingBandage", 90],
        ["ACE_quickClot", 90],

        ["ACE_Painkillers", 27],
        ["kat_Painkiller", 27],
        ["ACE_morphine", 27],
        ["ACE_epinephrine", 27],
        ["ACE_adenosine", 27],

        ["ACE_tourniquet", 54],
        ["ACE_suture", 100],
        ["ACE_splint", 40],

        ["ACE_surgicalKit", 10],
        ["ACE_PersonalAidKit", 10],
        ["kat_basicDiagnostic", 10],
        ["kat_Pulseoximeter", 10],

        ["ACE_BodyBag", 40],

        ["ACE_salineIV_250", 50],
        ["ACE_salineIV_500", 50],
        ["ACE_salineIV", 50],
        ["ACE_bloodIV", 50],
        ["ACE_bloodIV_250", 50],
        ["ACE_bloodIV_500", 50],

        ["kat_chestSeal", 50],
        ["kat_pocketBVM", 20],
        ["kat_ncdKit", 30],
        ["kat_larynx", 30],
        ["kat_IV_16", 50],
        ["kat_naloxone", 30],
        ["kat_Penthrox", 30],
        ["kat_AED", 5],
        ["kat_X_AED", 5],
        ["kat_aatKit", 30],
        ["kat_BVM", 20],
        ["kat_suction", 10],
        ["kat_accuvac", 10],
        ["kat_IO_FAST", 20],
        ["kat_oxygenTank_150", 10],

        ["kat_EACA", 30],
        ["kat_fentanyl", 30],
        ["kat_epinephrineIV", 50],
        ["kat_ketamine", 30],
        ["kat_nitroglycerin", 30],
        ["kat_norepinephrine", 30],
        ["kat_phenylephrine", 30],
        ["kat_TXA", 50],
        ["kat_lidocaine", 50],
        ["kat_amiodarone", 30],
        ["kat_atropine", 30]
    ]
] call ttt_common_fnc_crateFiller;