//// Generated country data.
////
//// Regenerate from countries.dev with `gleam run -m pull_countries`.

// GENERATED FILE - do not edit by hand.
//

import worldwide/currency.{Currency}
import worldwide/region.{
  Africa, Americas, Antarctic, AntarcticOcean, Asia, Europe, Oceania, Polar
}

import gleam/option.{None, Some}
import gleam/string
import gleam/time/duration

/// Return every known country in countries.dev name order.
@internal
pub fn all() {
  [
    country_af(),
    country_ax(),
    country_al(),
    country_dz(),
    country_as(),
    country_ad(),
    country_ao(),
    country_ai(),
    country_aq(),
    country_ag(),
    country_ar(),
    country_am(),
    country_aw(),
    country_au(),
    country_at(),
    country_az(),
    country_bs(),
    country_bh(),
    country_bd(),
    country_bb(),
    country_by(),
    country_be(),
    country_bz(),
    country_bj(),
    country_bm(),
    country_bt(),
    country_bo(),
    country_bq(),
    country_ba(),
    country_bw(),
    country_bv(),
    country_br(),
    country_io(),
    country_bn(),
    country_bg(),
    country_bf(),
    country_bi(),
    country_cv(),
    country_kh(),
    country_cm(),
    country_ca(),
    country_ky(),
    country_cf(),
    country_td(),
    country_cl(),
    country_cn(),
    country_cx(),
    country_cc(),
    country_co(),
    country_km(),
    country_cg(),
    country_cd(),
    country_ck(),
    country_cr(),
    country_hr(),
    country_cu(),
    country_cw(),
    country_cy(),
    country_cz(),
    country_dk(),
    country_dj(),
    country_dm(),
    country_do(),
    country_ec(),
    country_eg(),
    country_sv(),
    country_gq(),
    country_er(),
    country_ee(),
    country_et(),
    country_fk(),
    country_fo(),
    country_fj(),
    country_fi(),
    country_fr(),
    country_gf(),
    country_pf(),
    country_tf(),
    country_ga(),
    country_gm(),
    country_ge(),
    country_de(),
    country_gh(),
    country_gi(),
    country_gr(),
    country_gl(),
    country_gd(),
    country_gp(),
    country_gu(),
    country_gt(),
    country_gg(),
    country_gn(),
    country_gw(),
    country_gy(),
    country_ht(),
    country_hm(),
    country_hn(),
    country_hk(),
    country_hu(),
    country_is(),
    country_in(),
    country_id(),
    country_ir(),
    country_iq(),
    country_ie(),
    country_im(),
    country_il(),
    country_it(),
    country_ci(),
    country_jm(),
    country_jp(),
    country_je(),
    country_jo(),
    country_kz(),
    country_ke(),
    country_ki(),
    country_kp(),
    country_kr(),
    country_kw(),
    country_kg(),
    country_la(),
    country_lv(),
    country_lb(),
    country_ls(),
    country_lr(),
    country_ly(),
    country_li(),
    country_lt(),
    country_lu(),
    country_mo(),
    country_mg(),
    country_mw(),
    country_my(),
    country_mv(),
    country_ml(),
    country_mt(),
    country_mh(),
    country_mq(),
    country_mr(),
    country_mu(),
    country_yt(),
    country_mx(),
    country_fm(),
    country_md(),
    country_mc(),
    country_mn(),
    country_me(),
    country_ms(),
    country_ma(),
    country_mz(),
    country_mm(),
    country_na(),
    country_nr(),
    country_np(),
    country_nl(),
    country_nc(),
    country_nz(),
    country_ni(),
    country_ne(),
    country_ng(),
    country_nu(),
    country_nf(),
    country_mk(),
    country_mp(),
    country_no(),
    country_om(),
    country_pk(),
    country_pw(),
    country_ps(),
    country_pa(),
    country_pg(),
    country_py(),
    country_pe(),
    country_ph(),
    country_pn(),
    country_pl(),
    country_pt(),
    country_pr(),
    country_qa(),
    country_xk(),
    country_re(),
    country_ro(),
    country_ru(),
    country_rw(),
    country_bl(),
    country_sh(),
    country_kn(),
    country_lc(),
    country_mf(),
    country_pm(),
    country_vc(),
    country_ws(),
    country_sm(),
    country_st(),
    country_sa(),
    country_sn(),
    country_rs(),
    country_sc(),
    country_sl(),
    country_sg(),
    country_sx(),
    country_sk(),
    country_si(),
    country_sb(),
    country_so(),
    country_za(),
    country_gs(),
    country_ss(),
    country_es(),
    country_lk(),
    country_sd(),
    country_sr(),
    country_sj(),
    country_sz(),
    country_se(),
    country_ch(),
    country_sy(),
    country_tw(),
    country_tj(),
    country_tz(),
    country_th(),
    country_tl(),
    country_tg(),
    country_tk(),
    country_to(),
    country_tt(),
    country_tn(),
    country_tr(),
    country_tm(),
    country_tc(),
    country_tv(),
    country_ug(),
    country_ua(),
    country_ae(),
    country_gb(),
    country_um(),
    country_us(),
    country_uy(),
    country_uz(),
    country_vu(),
    country_va(),
    country_ve(),
    country_vn(),
    country_vg(),
    country_vi(),
    country_wf(),
    country_eh(),
    country_ye(),
    country_zm(),
    country_zw(),
  ]
}

/// Look up a country by normalized alpha-2, alpha-3, or numeric code.
@internal
pub fn from_iso_code(code: String) {
  case normalize(code) {
    "AF" -> Ok(country_af())
    "AFG" -> Ok(country_af())
    "004" -> Ok(country_af())
    "AX" -> Ok(country_ax())
    "ALA" -> Ok(country_ax())
    "248" -> Ok(country_ax())
    "AL" -> Ok(country_al())
    "ALB" -> Ok(country_al())
    "008" -> Ok(country_al())
    "DZ" -> Ok(country_dz())
    "DZA" -> Ok(country_dz())
    "012" -> Ok(country_dz())
    "AS" -> Ok(country_as())
    "ASM" -> Ok(country_as())
    "016" -> Ok(country_as())
    "AD" -> Ok(country_ad())
    "AND" -> Ok(country_ad())
    "020" -> Ok(country_ad())
    "AO" -> Ok(country_ao())
    "AGO" -> Ok(country_ao())
    "024" -> Ok(country_ao())
    "AI" -> Ok(country_ai())
    "AIA" -> Ok(country_ai())
    "660" -> Ok(country_ai())
    "AQ" -> Ok(country_aq())
    "ATA" -> Ok(country_aq())
    "010" -> Ok(country_aq())
    "AG" -> Ok(country_ag())
    "ATG" -> Ok(country_ag())
    "028" -> Ok(country_ag())
    "AR" -> Ok(country_ar())
    "ARG" -> Ok(country_ar())
    "032" -> Ok(country_ar())
    "AM" -> Ok(country_am())
    "ARM" -> Ok(country_am())
    "051" -> Ok(country_am())
    "AW" -> Ok(country_aw())
    "ABW" -> Ok(country_aw())
    "533" -> Ok(country_aw())
    "AU" -> Ok(country_au())
    "AUS" -> Ok(country_au())
    "036" -> Ok(country_au())
    "AT" -> Ok(country_at())
    "AUT" -> Ok(country_at())
    "040" -> Ok(country_at())
    "AZ" -> Ok(country_az())
    "AZE" -> Ok(country_az())
    "031" -> Ok(country_az())
    "BS" -> Ok(country_bs())
    "BHS" -> Ok(country_bs())
    "044" -> Ok(country_bs())
    "BH" -> Ok(country_bh())
    "BHR" -> Ok(country_bh())
    "048" -> Ok(country_bh())
    "BD" -> Ok(country_bd())
    "BGD" -> Ok(country_bd())
    "050" -> Ok(country_bd())
    "BB" -> Ok(country_bb())
    "BRB" -> Ok(country_bb())
    "052" -> Ok(country_bb())
    "BY" -> Ok(country_by())
    "BLR" -> Ok(country_by())
    "112" -> Ok(country_by())
    "BE" -> Ok(country_be())
    "BEL" -> Ok(country_be())
    "056" -> Ok(country_be())
    "BZ" -> Ok(country_bz())
    "BLZ" -> Ok(country_bz())
    "084" -> Ok(country_bz())
    "BJ" -> Ok(country_bj())
    "BEN" -> Ok(country_bj())
    "204" -> Ok(country_bj())
    "BM" -> Ok(country_bm())
    "BMU" -> Ok(country_bm())
    "060" -> Ok(country_bm())
    "BT" -> Ok(country_bt())
    "BTN" -> Ok(country_bt())
    "064" -> Ok(country_bt())
    "BO" -> Ok(country_bo())
    "BOL" -> Ok(country_bo())
    "068" -> Ok(country_bo())
    "BQ" -> Ok(country_bq())
    "BES" -> Ok(country_bq())
    "535" -> Ok(country_bq())
    "BA" -> Ok(country_ba())
    "BIH" -> Ok(country_ba())
    "070" -> Ok(country_ba())
    "BW" -> Ok(country_bw())
    "BWA" -> Ok(country_bw())
    "072" -> Ok(country_bw())
    "BV" -> Ok(country_bv())
    "BVT" -> Ok(country_bv())
    "074" -> Ok(country_bv())
    "BR" -> Ok(country_br())
    "BRA" -> Ok(country_br())
    "076" -> Ok(country_br())
    "IO" -> Ok(country_io())
    "IOT" -> Ok(country_io())
    "086" -> Ok(country_io())
    "BN" -> Ok(country_bn())
    "BRN" -> Ok(country_bn())
    "096" -> Ok(country_bn())
    "BG" -> Ok(country_bg())
    "BGR" -> Ok(country_bg())
    "100" -> Ok(country_bg())
    "BF" -> Ok(country_bf())
    "BFA" -> Ok(country_bf())
    "854" -> Ok(country_bf())
    "BI" -> Ok(country_bi())
    "BDI" -> Ok(country_bi())
    "108" -> Ok(country_bi())
    "CV" -> Ok(country_cv())
    "CPV" -> Ok(country_cv())
    "132" -> Ok(country_cv())
    "KH" -> Ok(country_kh())
    "KHM" -> Ok(country_kh())
    "116" -> Ok(country_kh())
    "CM" -> Ok(country_cm())
    "CMR" -> Ok(country_cm())
    "120" -> Ok(country_cm())
    "CA" -> Ok(country_ca())
    "CAN" -> Ok(country_ca())
    "124" -> Ok(country_ca())
    "KY" -> Ok(country_ky())
    "CYM" -> Ok(country_ky())
    "136" -> Ok(country_ky())
    "CF" -> Ok(country_cf())
    "CAF" -> Ok(country_cf())
    "140" -> Ok(country_cf())
    "TD" -> Ok(country_td())
    "TCD" -> Ok(country_td())
    "148" -> Ok(country_td())
    "CL" -> Ok(country_cl())
    "CHL" -> Ok(country_cl())
    "152" -> Ok(country_cl())
    "CN" -> Ok(country_cn())
    "CHN" -> Ok(country_cn())
    "156" -> Ok(country_cn())
    "CX" -> Ok(country_cx())
    "CXR" -> Ok(country_cx())
    "162" -> Ok(country_cx())
    "CC" -> Ok(country_cc())
    "CCK" -> Ok(country_cc())
    "166" -> Ok(country_cc())
    "CO" -> Ok(country_co())
    "COL" -> Ok(country_co())
    "170" -> Ok(country_co())
    "KM" -> Ok(country_km())
    "COM" -> Ok(country_km())
    "174" -> Ok(country_km())
    "CG" -> Ok(country_cg())
    "COG" -> Ok(country_cg())
    "178" -> Ok(country_cg())
    "CD" -> Ok(country_cd())
    "COD" -> Ok(country_cd())
    "180" -> Ok(country_cd())
    "CK" -> Ok(country_ck())
    "COK" -> Ok(country_ck())
    "184" -> Ok(country_ck())
    "CR" -> Ok(country_cr())
    "CRI" -> Ok(country_cr())
    "188" -> Ok(country_cr())
    "HR" -> Ok(country_hr())
    "HRV" -> Ok(country_hr())
    "191" -> Ok(country_hr())
    "CU" -> Ok(country_cu())
    "CUB" -> Ok(country_cu())
    "192" -> Ok(country_cu())
    "CW" -> Ok(country_cw())
    "CUW" -> Ok(country_cw())
    "531" -> Ok(country_cw())
    "CY" -> Ok(country_cy())
    "CYP" -> Ok(country_cy())
    "196" -> Ok(country_cy())
    "CZ" -> Ok(country_cz())
    "CZE" -> Ok(country_cz())
    "203" -> Ok(country_cz())
    "DK" -> Ok(country_dk())
    "DNK" -> Ok(country_dk())
    "208" -> Ok(country_dk())
    "DJ" -> Ok(country_dj())
    "DJI" -> Ok(country_dj())
    "262" -> Ok(country_dj())
    "DM" -> Ok(country_dm())
    "DMA" -> Ok(country_dm())
    "212" -> Ok(country_dm())
    "DO" -> Ok(country_do())
    "DOM" -> Ok(country_do())
    "214" -> Ok(country_do())
    "EC" -> Ok(country_ec())
    "ECU" -> Ok(country_ec())
    "218" -> Ok(country_ec())
    "EG" -> Ok(country_eg())
    "EGY" -> Ok(country_eg())
    "818" -> Ok(country_eg())
    "SV" -> Ok(country_sv())
    "SLV" -> Ok(country_sv())
    "222" -> Ok(country_sv())
    "GQ" -> Ok(country_gq())
    "GNQ" -> Ok(country_gq())
    "226" -> Ok(country_gq())
    "ER" -> Ok(country_er())
    "ERI" -> Ok(country_er())
    "232" -> Ok(country_er())
    "EE" -> Ok(country_ee())
    "EST" -> Ok(country_ee())
    "233" -> Ok(country_ee())
    "ET" -> Ok(country_et())
    "ETH" -> Ok(country_et())
    "231" -> Ok(country_et())
    "FK" -> Ok(country_fk())
    "FLK" -> Ok(country_fk())
    "238" -> Ok(country_fk())
    "FO" -> Ok(country_fo())
    "FRO" -> Ok(country_fo())
    "234" -> Ok(country_fo())
    "FJ" -> Ok(country_fj())
    "FJI" -> Ok(country_fj())
    "242" -> Ok(country_fj())
    "FI" -> Ok(country_fi())
    "FIN" -> Ok(country_fi())
    "246" -> Ok(country_fi())
    "FR" -> Ok(country_fr())
    "FRA" -> Ok(country_fr())
    "250" -> Ok(country_fr())
    "GF" -> Ok(country_gf())
    "GUF" -> Ok(country_gf())
    "254" -> Ok(country_gf())
    "PF" -> Ok(country_pf())
    "PYF" -> Ok(country_pf())
    "258" -> Ok(country_pf())
    "TF" -> Ok(country_tf())
    "ATF" -> Ok(country_tf())
    "260" -> Ok(country_tf())
    "GA" -> Ok(country_ga())
    "GAB" -> Ok(country_ga())
    "266" -> Ok(country_ga())
    "GM" -> Ok(country_gm())
    "GMB" -> Ok(country_gm())
    "270" -> Ok(country_gm())
    "GE" -> Ok(country_ge())
    "GEO" -> Ok(country_ge())
    "268" -> Ok(country_ge())
    "DE" -> Ok(country_de())
    "DEU" -> Ok(country_de())
    "276" -> Ok(country_de())
    "GH" -> Ok(country_gh())
    "GHA" -> Ok(country_gh())
    "288" -> Ok(country_gh())
    "GI" -> Ok(country_gi())
    "GIB" -> Ok(country_gi())
    "292" -> Ok(country_gi())
    "GR" -> Ok(country_gr())
    "GRC" -> Ok(country_gr())
    "300" -> Ok(country_gr())
    "GL" -> Ok(country_gl())
    "GRL" -> Ok(country_gl())
    "304" -> Ok(country_gl())
    "GD" -> Ok(country_gd())
    "GRD" -> Ok(country_gd())
    "308" -> Ok(country_gd())
    "GP" -> Ok(country_gp())
    "GLP" -> Ok(country_gp())
    "312" -> Ok(country_gp())
    "GU" -> Ok(country_gu())
    "GUM" -> Ok(country_gu())
    "316" -> Ok(country_gu())
    "GT" -> Ok(country_gt())
    "GTM" -> Ok(country_gt())
    "320" -> Ok(country_gt())
    "GG" -> Ok(country_gg())
    "GGY" -> Ok(country_gg())
    "831" -> Ok(country_gg())
    "GN" -> Ok(country_gn())
    "GIN" -> Ok(country_gn())
    "324" -> Ok(country_gn())
    "GW" -> Ok(country_gw())
    "GNB" -> Ok(country_gw())
    "624" -> Ok(country_gw())
    "GY" -> Ok(country_gy())
    "GUY" -> Ok(country_gy())
    "328" -> Ok(country_gy())
    "HT" -> Ok(country_ht())
    "HTI" -> Ok(country_ht())
    "332" -> Ok(country_ht())
    "HM" -> Ok(country_hm())
    "HMD" -> Ok(country_hm())
    "334" -> Ok(country_hm())
    "HN" -> Ok(country_hn())
    "HND" -> Ok(country_hn())
    "340" -> Ok(country_hn())
    "HK" -> Ok(country_hk())
    "HKG" -> Ok(country_hk())
    "344" -> Ok(country_hk())
    "HU" -> Ok(country_hu())
    "HUN" -> Ok(country_hu())
    "348" -> Ok(country_hu())
    "IS" -> Ok(country_is())
    "ISL" -> Ok(country_is())
    "352" -> Ok(country_is())
    "IN" -> Ok(country_in())
    "IND" -> Ok(country_in())
    "356" -> Ok(country_in())
    "ID" -> Ok(country_id())
    "IDN" -> Ok(country_id())
    "360" -> Ok(country_id())
    "IR" -> Ok(country_ir())
    "IRN" -> Ok(country_ir())
    "364" -> Ok(country_ir())
    "IQ" -> Ok(country_iq())
    "IRQ" -> Ok(country_iq())
    "368" -> Ok(country_iq())
    "IE" -> Ok(country_ie())
    "IRL" -> Ok(country_ie())
    "372" -> Ok(country_ie())
    "IM" -> Ok(country_im())
    "IMN" -> Ok(country_im())
    "833" -> Ok(country_im())
    "IL" -> Ok(country_il())
    "ISR" -> Ok(country_il())
    "376" -> Ok(country_il())
    "IT" -> Ok(country_it())
    "ITA" -> Ok(country_it())
    "380" -> Ok(country_it())
    "CI" -> Ok(country_ci())
    "CIV" -> Ok(country_ci())
    "384" -> Ok(country_ci())
    "JM" -> Ok(country_jm())
    "JAM" -> Ok(country_jm())
    "388" -> Ok(country_jm())
    "JP" -> Ok(country_jp())
    "JPN" -> Ok(country_jp())
    "392" -> Ok(country_jp())
    "JE" -> Ok(country_je())
    "JEY" -> Ok(country_je())
    "832" -> Ok(country_je())
    "JO" -> Ok(country_jo())
    "JOR" -> Ok(country_jo())
    "400" -> Ok(country_jo())
    "KZ" -> Ok(country_kz())
    "KAZ" -> Ok(country_kz())
    "398" -> Ok(country_kz())
    "KE" -> Ok(country_ke())
    "KEN" -> Ok(country_ke())
    "404" -> Ok(country_ke())
    "KI" -> Ok(country_ki())
    "KIR" -> Ok(country_ki())
    "296" -> Ok(country_ki())
    "KP" -> Ok(country_kp())
    "PRK" -> Ok(country_kp())
    "408" -> Ok(country_kp())
    "KR" -> Ok(country_kr())
    "KOR" -> Ok(country_kr())
    "410" -> Ok(country_kr())
    "KW" -> Ok(country_kw())
    "KWT" -> Ok(country_kw())
    "414" -> Ok(country_kw())
    "KG" -> Ok(country_kg())
    "KGZ" -> Ok(country_kg())
    "417" -> Ok(country_kg())
    "LA" -> Ok(country_la())
    "LAO" -> Ok(country_la())
    "418" -> Ok(country_la())
    "LV" -> Ok(country_lv())
    "LVA" -> Ok(country_lv())
    "428" -> Ok(country_lv())
    "LB" -> Ok(country_lb())
    "LBN" -> Ok(country_lb())
    "422" -> Ok(country_lb())
    "LS" -> Ok(country_ls())
    "LSO" -> Ok(country_ls())
    "426" -> Ok(country_ls())
    "LR" -> Ok(country_lr())
    "LBR" -> Ok(country_lr())
    "430" -> Ok(country_lr())
    "LY" -> Ok(country_ly())
    "LBY" -> Ok(country_ly())
    "434" -> Ok(country_ly())
    "LI" -> Ok(country_li())
    "LIE" -> Ok(country_li())
    "438" -> Ok(country_li())
    "LT" -> Ok(country_lt())
    "LTU" -> Ok(country_lt())
    "440" -> Ok(country_lt())
    "LU" -> Ok(country_lu())
    "LUX" -> Ok(country_lu())
    "442" -> Ok(country_lu())
    "MO" -> Ok(country_mo())
    "MAC" -> Ok(country_mo())
    "446" -> Ok(country_mo())
    "MG" -> Ok(country_mg())
    "MDG" -> Ok(country_mg())
    "450" -> Ok(country_mg())
    "MW" -> Ok(country_mw())
    "MWI" -> Ok(country_mw())
    "454" -> Ok(country_mw())
    "MY" -> Ok(country_my())
    "MYS" -> Ok(country_my())
    "458" -> Ok(country_my())
    "MV" -> Ok(country_mv())
    "MDV" -> Ok(country_mv())
    "462" -> Ok(country_mv())
    "ML" -> Ok(country_ml())
    "MLI" -> Ok(country_ml())
    "466" -> Ok(country_ml())
    "MT" -> Ok(country_mt())
    "MLT" -> Ok(country_mt())
    "470" -> Ok(country_mt())
    "MH" -> Ok(country_mh())
    "MHL" -> Ok(country_mh())
    "584" -> Ok(country_mh())
    "MQ" -> Ok(country_mq())
    "MTQ" -> Ok(country_mq())
    "474" -> Ok(country_mq())
    "MR" -> Ok(country_mr())
    "MRT" -> Ok(country_mr())
    "478" -> Ok(country_mr())
    "MU" -> Ok(country_mu())
    "MUS" -> Ok(country_mu())
    "480" -> Ok(country_mu())
    "YT" -> Ok(country_yt())
    "MYT" -> Ok(country_yt())
    "175" -> Ok(country_yt())
    "MX" -> Ok(country_mx())
    "MEX" -> Ok(country_mx())
    "484" -> Ok(country_mx())
    "FM" -> Ok(country_fm())
    "FSM" -> Ok(country_fm())
    "583" -> Ok(country_fm())
    "MD" -> Ok(country_md())
    "MDA" -> Ok(country_md())
    "498" -> Ok(country_md())
    "MC" -> Ok(country_mc())
    "MCO" -> Ok(country_mc())
    "492" -> Ok(country_mc())
    "MN" -> Ok(country_mn())
    "MNG" -> Ok(country_mn())
    "496" -> Ok(country_mn())
    "ME" -> Ok(country_me())
    "MNE" -> Ok(country_me())
    "499" -> Ok(country_me())
    "MS" -> Ok(country_ms())
    "MSR" -> Ok(country_ms())
    "500" -> Ok(country_ms())
    "MA" -> Ok(country_ma())
    "MAR" -> Ok(country_ma())
    "504" -> Ok(country_ma())
    "MZ" -> Ok(country_mz())
    "MOZ" -> Ok(country_mz())
    "508" -> Ok(country_mz())
    "MM" -> Ok(country_mm())
    "MMR" -> Ok(country_mm())
    "104" -> Ok(country_mm())
    "NA" -> Ok(country_na())
    "NAM" -> Ok(country_na())
    "516" -> Ok(country_na())
    "NR" -> Ok(country_nr())
    "NRU" -> Ok(country_nr())
    "520" -> Ok(country_nr())
    "NP" -> Ok(country_np())
    "NPL" -> Ok(country_np())
    "524" -> Ok(country_np())
    "NL" -> Ok(country_nl())
    "NLD" -> Ok(country_nl())
    "528" -> Ok(country_nl())
    "NC" -> Ok(country_nc())
    "NCL" -> Ok(country_nc())
    "540" -> Ok(country_nc())
    "NZ" -> Ok(country_nz())
    "NZL" -> Ok(country_nz())
    "554" -> Ok(country_nz())
    "NI" -> Ok(country_ni())
    "NIC" -> Ok(country_ni())
    "558" -> Ok(country_ni())
    "NE" -> Ok(country_ne())
    "NER" -> Ok(country_ne())
    "562" -> Ok(country_ne())
    "NG" -> Ok(country_ng())
    "NGA" -> Ok(country_ng())
    "566" -> Ok(country_ng())
    "NU" -> Ok(country_nu())
    "NIU" -> Ok(country_nu())
    "570" -> Ok(country_nu())
    "NF" -> Ok(country_nf())
    "NFK" -> Ok(country_nf())
    "574" -> Ok(country_nf())
    "MK" -> Ok(country_mk())
    "MKD" -> Ok(country_mk())
    "807" -> Ok(country_mk())
    "MP" -> Ok(country_mp())
    "MNP" -> Ok(country_mp())
    "580" -> Ok(country_mp())
    "NO" -> Ok(country_no())
    "NOR" -> Ok(country_no())
    "578" -> Ok(country_no())
    "OM" -> Ok(country_om())
    "OMN" -> Ok(country_om())
    "512" -> Ok(country_om())
    "PK" -> Ok(country_pk())
    "PAK" -> Ok(country_pk())
    "586" -> Ok(country_pk())
    "PW" -> Ok(country_pw())
    "PLW" -> Ok(country_pw())
    "585" -> Ok(country_pw())
    "PS" -> Ok(country_ps())
    "PSE" -> Ok(country_ps())
    "275" -> Ok(country_ps())
    "PA" -> Ok(country_pa())
    "PAN" -> Ok(country_pa())
    "591" -> Ok(country_pa())
    "PG" -> Ok(country_pg())
    "PNG" -> Ok(country_pg())
    "598" -> Ok(country_pg())
    "PY" -> Ok(country_py())
    "PRY" -> Ok(country_py())
    "600" -> Ok(country_py())
    "PE" -> Ok(country_pe())
    "PER" -> Ok(country_pe())
    "604" -> Ok(country_pe())
    "PH" -> Ok(country_ph())
    "PHL" -> Ok(country_ph())
    "608" -> Ok(country_ph())
    "PN" -> Ok(country_pn())
    "PCN" -> Ok(country_pn())
    "612" -> Ok(country_pn())
    "PL" -> Ok(country_pl())
    "POL" -> Ok(country_pl())
    "616" -> Ok(country_pl())
    "PT" -> Ok(country_pt())
    "PRT" -> Ok(country_pt())
    "620" -> Ok(country_pt())
    "PR" -> Ok(country_pr())
    "PRI" -> Ok(country_pr())
    "630" -> Ok(country_pr())
    "QA" -> Ok(country_qa())
    "QAT" -> Ok(country_qa())
    "634" -> Ok(country_qa())
    "XK" -> Ok(country_xk())
    "UNK" -> Ok(country_xk())
    "926" -> Ok(country_xk())
    "RE" -> Ok(country_re())
    "REU" -> Ok(country_re())
    "638" -> Ok(country_re())
    "RO" -> Ok(country_ro())
    "ROU" -> Ok(country_ro())
    "642" -> Ok(country_ro())
    "RU" -> Ok(country_ru())
    "RUS" -> Ok(country_ru())
    "643" -> Ok(country_ru())
    "RW" -> Ok(country_rw())
    "RWA" -> Ok(country_rw())
    "646" -> Ok(country_rw())
    "BL" -> Ok(country_bl())
    "BLM" -> Ok(country_bl())
    "652" -> Ok(country_bl())
    "SH" -> Ok(country_sh())
    "SHN" -> Ok(country_sh())
    "654" -> Ok(country_sh())
    "KN" -> Ok(country_kn())
    "KNA" -> Ok(country_kn())
    "659" -> Ok(country_kn())
    "LC" -> Ok(country_lc())
    "LCA" -> Ok(country_lc())
    "662" -> Ok(country_lc())
    "MF" -> Ok(country_mf())
    "MAF" -> Ok(country_mf())
    "663" -> Ok(country_mf())
    "PM" -> Ok(country_pm())
    "SPM" -> Ok(country_pm())
    "666" -> Ok(country_pm())
    "VC" -> Ok(country_vc())
    "VCT" -> Ok(country_vc())
    "670" -> Ok(country_vc())
    "WS" -> Ok(country_ws())
    "WSM" -> Ok(country_ws())
    "882" -> Ok(country_ws())
    "SM" -> Ok(country_sm())
    "SMR" -> Ok(country_sm())
    "674" -> Ok(country_sm())
    "ST" -> Ok(country_st())
    "STP" -> Ok(country_st())
    "678" -> Ok(country_st())
    "SA" -> Ok(country_sa())
    "SAU" -> Ok(country_sa())
    "682" -> Ok(country_sa())
    "SN" -> Ok(country_sn())
    "SEN" -> Ok(country_sn())
    "686" -> Ok(country_sn())
    "RS" -> Ok(country_rs())
    "SRB" -> Ok(country_rs())
    "688" -> Ok(country_rs())
    "SC" -> Ok(country_sc())
    "SYC" -> Ok(country_sc())
    "690" -> Ok(country_sc())
    "SL" -> Ok(country_sl())
    "SLE" -> Ok(country_sl())
    "694" -> Ok(country_sl())
    "SG" -> Ok(country_sg())
    "SGP" -> Ok(country_sg())
    "702" -> Ok(country_sg())
    "SX" -> Ok(country_sx())
    "SXM" -> Ok(country_sx())
    "534" -> Ok(country_sx())
    "SK" -> Ok(country_sk())
    "SVK" -> Ok(country_sk())
    "703" -> Ok(country_sk())
    "SI" -> Ok(country_si())
    "SVN" -> Ok(country_si())
    "705" -> Ok(country_si())
    "SB" -> Ok(country_sb())
    "SLB" -> Ok(country_sb())
    "090" -> Ok(country_sb())
    "SO" -> Ok(country_so())
    "SOM" -> Ok(country_so())
    "706" -> Ok(country_so())
    "ZA" -> Ok(country_za())
    "ZAF" -> Ok(country_za())
    "710" -> Ok(country_za())
    "GS" -> Ok(country_gs())
    "SGS" -> Ok(country_gs())
    "239" -> Ok(country_gs())
    "SS" -> Ok(country_ss())
    "SSD" -> Ok(country_ss())
    "728" -> Ok(country_ss())
    "ES" -> Ok(country_es())
    "ESP" -> Ok(country_es())
    "724" -> Ok(country_es())
    "LK" -> Ok(country_lk())
    "LKA" -> Ok(country_lk())
    "144" -> Ok(country_lk())
    "SD" -> Ok(country_sd())
    "SDN" -> Ok(country_sd())
    "729" -> Ok(country_sd())
    "SR" -> Ok(country_sr())
    "SUR" -> Ok(country_sr())
    "740" -> Ok(country_sr())
    "SJ" -> Ok(country_sj())
    "SJM" -> Ok(country_sj())
    "744" -> Ok(country_sj())
    "SZ" -> Ok(country_sz())
    "SWZ" -> Ok(country_sz())
    "748" -> Ok(country_sz())
    "SE" -> Ok(country_se())
    "SWE" -> Ok(country_se())
    "752" -> Ok(country_se())
    "CH" -> Ok(country_ch())
    "CHE" -> Ok(country_ch())
    "756" -> Ok(country_ch())
    "SY" -> Ok(country_sy())
    "SYR" -> Ok(country_sy())
    "760" -> Ok(country_sy())
    "TW" -> Ok(country_tw())
    "TWN" -> Ok(country_tw())
    "158" -> Ok(country_tw())
    "TJ" -> Ok(country_tj())
    "TJK" -> Ok(country_tj())
    "762" -> Ok(country_tj())
    "TZ" -> Ok(country_tz())
    "TZA" -> Ok(country_tz())
    "834" -> Ok(country_tz())
    "TH" -> Ok(country_th())
    "THA" -> Ok(country_th())
    "764" -> Ok(country_th())
    "TL" -> Ok(country_tl())
    "TLS" -> Ok(country_tl())
    "626" -> Ok(country_tl())
    "TG" -> Ok(country_tg())
    "TGO" -> Ok(country_tg())
    "768" -> Ok(country_tg())
    "TK" -> Ok(country_tk())
    "TKL" -> Ok(country_tk())
    "772" -> Ok(country_tk())
    "TO" -> Ok(country_to())
    "TON" -> Ok(country_to())
    "776" -> Ok(country_to())
    "TT" -> Ok(country_tt())
    "TTO" -> Ok(country_tt())
    "780" -> Ok(country_tt())
    "TN" -> Ok(country_tn())
    "TUN" -> Ok(country_tn())
    "788" -> Ok(country_tn())
    "TR" -> Ok(country_tr())
    "TUR" -> Ok(country_tr())
    "792" -> Ok(country_tr())
    "TM" -> Ok(country_tm())
    "TKM" -> Ok(country_tm())
    "795" -> Ok(country_tm())
    "TC" -> Ok(country_tc())
    "TCA" -> Ok(country_tc())
    "796" -> Ok(country_tc())
    "TV" -> Ok(country_tv())
    "TUV" -> Ok(country_tv())
    "798" -> Ok(country_tv())
    "UG" -> Ok(country_ug())
    "UGA" -> Ok(country_ug())
    "800" -> Ok(country_ug())
    "UA" -> Ok(country_ua())
    "UKR" -> Ok(country_ua())
    "804" -> Ok(country_ua())
    "AE" -> Ok(country_ae())
    "ARE" -> Ok(country_ae())
    "784" -> Ok(country_ae())
    "GB" -> Ok(country_gb())
    "GBR" -> Ok(country_gb())
    "826" -> Ok(country_gb())
    "UM" -> Ok(country_um())
    "UMI" -> Ok(country_um())
    "581" -> Ok(country_um())
    "US" -> Ok(country_us())
    "USA" -> Ok(country_us())
    "840" -> Ok(country_us())
    "UY" -> Ok(country_uy())
    "URY" -> Ok(country_uy())
    "858" -> Ok(country_uy())
    "UZ" -> Ok(country_uz())
    "UZB" -> Ok(country_uz())
    "860" -> Ok(country_uz())
    "VU" -> Ok(country_vu())
    "VUT" -> Ok(country_vu())
    "548" -> Ok(country_vu())
    "VA" -> Ok(country_va())
    "VAT" -> Ok(country_va())
    "336" -> Ok(country_va())
    "VE" -> Ok(country_ve())
    "VEN" -> Ok(country_ve())
    "862" -> Ok(country_ve())
    "VN" -> Ok(country_vn())
    "VNM" -> Ok(country_vn())
    "704" -> Ok(country_vn())
    "VG" -> Ok(country_vg())
    "VGB" -> Ok(country_vg())
    "092" -> Ok(country_vg())
    "VI" -> Ok(country_vi())
    "VIR" -> Ok(country_vi())
    "850" -> Ok(country_vi())
    "WF" -> Ok(country_wf())
    "WLF" -> Ok(country_wf())
    "876" -> Ok(country_wf())
    "EH" -> Ok(country_eh())
    "ESH" -> Ok(country_eh())
    "732" -> Ok(country_eh())
    "YE" -> Ok(country_ye())
    "YEM" -> Ok(country_ye())
    "887" -> Ok(country_ye())
    "ZM" -> Ok(country_zm())
    "ZMB" -> Ok(country_zm())
    "894" -> Ok(country_zm())
    "ZW" -> Ok(country_zw())
    "ZWE" -> Ok(country_zw())
    "716" -> Ok(country_zw())
    _ -> Error(Nil)
  }
}

/// Look up a country by normalized alpha-2 code.
@internal
pub fn from_alpha2(alpha2: String) {
  case normalize(alpha2) {
    "AF" -> Ok(country_af())
    "AX" -> Ok(country_ax())
    "AL" -> Ok(country_al())
    "DZ" -> Ok(country_dz())
    "AS" -> Ok(country_as())
    "AD" -> Ok(country_ad())
    "AO" -> Ok(country_ao())
    "AI" -> Ok(country_ai())
    "AQ" -> Ok(country_aq())
    "AG" -> Ok(country_ag())
    "AR" -> Ok(country_ar())
    "AM" -> Ok(country_am())
    "AW" -> Ok(country_aw())
    "AU" -> Ok(country_au())
    "AT" -> Ok(country_at())
    "AZ" -> Ok(country_az())
    "BS" -> Ok(country_bs())
    "BH" -> Ok(country_bh())
    "BD" -> Ok(country_bd())
    "BB" -> Ok(country_bb())
    "BY" -> Ok(country_by())
    "BE" -> Ok(country_be())
    "BZ" -> Ok(country_bz())
    "BJ" -> Ok(country_bj())
    "BM" -> Ok(country_bm())
    "BT" -> Ok(country_bt())
    "BO" -> Ok(country_bo())
    "BQ" -> Ok(country_bq())
    "BA" -> Ok(country_ba())
    "BW" -> Ok(country_bw())
    "BV" -> Ok(country_bv())
    "BR" -> Ok(country_br())
    "IO" -> Ok(country_io())
    "BN" -> Ok(country_bn())
    "BG" -> Ok(country_bg())
    "BF" -> Ok(country_bf())
    "BI" -> Ok(country_bi())
    "CV" -> Ok(country_cv())
    "KH" -> Ok(country_kh())
    "CM" -> Ok(country_cm())
    "CA" -> Ok(country_ca())
    "KY" -> Ok(country_ky())
    "CF" -> Ok(country_cf())
    "TD" -> Ok(country_td())
    "CL" -> Ok(country_cl())
    "CN" -> Ok(country_cn())
    "CX" -> Ok(country_cx())
    "CC" -> Ok(country_cc())
    "CO" -> Ok(country_co())
    "KM" -> Ok(country_km())
    "CG" -> Ok(country_cg())
    "CD" -> Ok(country_cd())
    "CK" -> Ok(country_ck())
    "CR" -> Ok(country_cr())
    "HR" -> Ok(country_hr())
    "CU" -> Ok(country_cu())
    "CW" -> Ok(country_cw())
    "CY" -> Ok(country_cy())
    "CZ" -> Ok(country_cz())
    "DK" -> Ok(country_dk())
    "DJ" -> Ok(country_dj())
    "DM" -> Ok(country_dm())
    "DO" -> Ok(country_do())
    "EC" -> Ok(country_ec())
    "EG" -> Ok(country_eg())
    "SV" -> Ok(country_sv())
    "GQ" -> Ok(country_gq())
    "ER" -> Ok(country_er())
    "EE" -> Ok(country_ee())
    "ET" -> Ok(country_et())
    "FK" -> Ok(country_fk())
    "FO" -> Ok(country_fo())
    "FJ" -> Ok(country_fj())
    "FI" -> Ok(country_fi())
    "FR" -> Ok(country_fr())
    "GF" -> Ok(country_gf())
    "PF" -> Ok(country_pf())
    "TF" -> Ok(country_tf())
    "GA" -> Ok(country_ga())
    "GM" -> Ok(country_gm())
    "GE" -> Ok(country_ge())
    "DE" -> Ok(country_de())
    "GH" -> Ok(country_gh())
    "GI" -> Ok(country_gi())
    "GR" -> Ok(country_gr())
    "GL" -> Ok(country_gl())
    "GD" -> Ok(country_gd())
    "GP" -> Ok(country_gp())
    "GU" -> Ok(country_gu())
    "GT" -> Ok(country_gt())
    "GG" -> Ok(country_gg())
    "GN" -> Ok(country_gn())
    "GW" -> Ok(country_gw())
    "GY" -> Ok(country_gy())
    "HT" -> Ok(country_ht())
    "HM" -> Ok(country_hm())
    "HN" -> Ok(country_hn())
    "HK" -> Ok(country_hk())
    "HU" -> Ok(country_hu())
    "IS" -> Ok(country_is())
    "IN" -> Ok(country_in())
    "ID" -> Ok(country_id())
    "IR" -> Ok(country_ir())
    "IQ" -> Ok(country_iq())
    "IE" -> Ok(country_ie())
    "IM" -> Ok(country_im())
    "IL" -> Ok(country_il())
    "IT" -> Ok(country_it())
    "CI" -> Ok(country_ci())
    "JM" -> Ok(country_jm())
    "JP" -> Ok(country_jp())
    "JE" -> Ok(country_je())
    "JO" -> Ok(country_jo())
    "KZ" -> Ok(country_kz())
    "KE" -> Ok(country_ke())
    "KI" -> Ok(country_ki())
    "KP" -> Ok(country_kp())
    "KR" -> Ok(country_kr())
    "KW" -> Ok(country_kw())
    "KG" -> Ok(country_kg())
    "LA" -> Ok(country_la())
    "LV" -> Ok(country_lv())
    "LB" -> Ok(country_lb())
    "LS" -> Ok(country_ls())
    "LR" -> Ok(country_lr())
    "LY" -> Ok(country_ly())
    "LI" -> Ok(country_li())
    "LT" -> Ok(country_lt())
    "LU" -> Ok(country_lu())
    "MO" -> Ok(country_mo())
    "MG" -> Ok(country_mg())
    "MW" -> Ok(country_mw())
    "MY" -> Ok(country_my())
    "MV" -> Ok(country_mv())
    "ML" -> Ok(country_ml())
    "MT" -> Ok(country_mt())
    "MH" -> Ok(country_mh())
    "MQ" -> Ok(country_mq())
    "MR" -> Ok(country_mr())
    "MU" -> Ok(country_mu())
    "YT" -> Ok(country_yt())
    "MX" -> Ok(country_mx())
    "FM" -> Ok(country_fm())
    "MD" -> Ok(country_md())
    "MC" -> Ok(country_mc())
    "MN" -> Ok(country_mn())
    "ME" -> Ok(country_me())
    "MS" -> Ok(country_ms())
    "MA" -> Ok(country_ma())
    "MZ" -> Ok(country_mz())
    "MM" -> Ok(country_mm())
    "NA" -> Ok(country_na())
    "NR" -> Ok(country_nr())
    "NP" -> Ok(country_np())
    "NL" -> Ok(country_nl())
    "NC" -> Ok(country_nc())
    "NZ" -> Ok(country_nz())
    "NI" -> Ok(country_ni())
    "NE" -> Ok(country_ne())
    "NG" -> Ok(country_ng())
    "NU" -> Ok(country_nu())
    "NF" -> Ok(country_nf())
    "MK" -> Ok(country_mk())
    "MP" -> Ok(country_mp())
    "NO" -> Ok(country_no())
    "OM" -> Ok(country_om())
    "PK" -> Ok(country_pk())
    "PW" -> Ok(country_pw())
    "PS" -> Ok(country_ps())
    "PA" -> Ok(country_pa())
    "PG" -> Ok(country_pg())
    "PY" -> Ok(country_py())
    "PE" -> Ok(country_pe())
    "PH" -> Ok(country_ph())
    "PN" -> Ok(country_pn())
    "PL" -> Ok(country_pl())
    "PT" -> Ok(country_pt())
    "PR" -> Ok(country_pr())
    "QA" -> Ok(country_qa())
    "XK" -> Ok(country_xk())
    "RE" -> Ok(country_re())
    "RO" -> Ok(country_ro())
    "RU" -> Ok(country_ru())
    "RW" -> Ok(country_rw())
    "BL" -> Ok(country_bl())
    "SH" -> Ok(country_sh())
    "KN" -> Ok(country_kn())
    "LC" -> Ok(country_lc())
    "MF" -> Ok(country_mf())
    "PM" -> Ok(country_pm())
    "VC" -> Ok(country_vc())
    "WS" -> Ok(country_ws())
    "SM" -> Ok(country_sm())
    "ST" -> Ok(country_st())
    "SA" -> Ok(country_sa())
    "SN" -> Ok(country_sn())
    "RS" -> Ok(country_rs())
    "SC" -> Ok(country_sc())
    "SL" -> Ok(country_sl())
    "SG" -> Ok(country_sg())
    "SX" -> Ok(country_sx())
    "SK" -> Ok(country_sk())
    "SI" -> Ok(country_si())
    "SB" -> Ok(country_sb())
    "SO" -> Ok(country_so())
    "ZA" -> Ok(country_za())
    "GS" -> Ok(country_gs())
    "SS" -> Ok(country_ss())
    "ES" -> Ok(country_es())
    "LK" -> Ok(country_lk())
    "SD" -> Ok(country_sd())
    "SR" -> Ok(country_sr())
    "SJ" -> Ok(country_sj())
    "SZ" -> Ok(country_sz())
    "SE" -> Ok(country_se())
    "CH" -> Ok(country_ch())
    "SY" -> Ok(country_sy())
    "TW" -> Ok(country_tw())
    "TJ" -> Ok(country_tj())
    "TZ" -> Ok(country_tz())
    "TH" -> Ok(country_th())
    "TL" -> Ok(country_tl())
    "TG" -> Ok(country_tg())
    "TK" -> Ok(country_tk())
    "TO" -> Ok(country_to())
    "TT" -> Ok(country_tt())
    "TN" -> Ok(country_tn())
    "TR" -> Ok(country_tr())
    "TM" -> Ok(country_tm())
    "TC" -> Ok(country_tc())
    "TV" -> Ok(country_tv())
    "UG" -> Ok(country_ug())
    "UA" -> Ok(country_ua())
    "AE" -> Ok(country_ae())
    "GB" -> Ok(country_gb())
    "UM" -> Ok(country_um())
    "US" -> Ok(country_us())
    "UY" -> Ok(country_uy())
    "UZ" -> Ok(country_uz())
    "VU" -> Ok(country_vu())
    "VA" -> Ok(country_va())
    "VE" -> Ok(country_ve())
    "VN" -> Ok(country_vn())
    "VG" -> Ok(country_vg())
    "VI" -> Ok(country_vi())
    "WF" -> Ok(country_wf())
    "EH" -> Ok(country_eh())
    "YE" -> Ok(country_ye())
    "ZM" -> Ok(country_zm())
    "ZW" -> Ok(country_zw())
    _ -> Error(Nil)
  }
}

/// Look up a country by exact common English name.
@internal
pub fn from_name(name: String) {
  case string.trim(name) {
    "Afghanistan" -> Ok(country_af())
    "Åland Islands" -> Ok(country_ax())
    "Albania" -> Ok(country_al())
    "Algeria" -> Ok(country_dz())
    "American Samoa" -> Ok(country_as())
    "Andorra" -> Ok(country_ad())
    "Angola" -> Ok(country_ao())
    "Anguilla" -> Ok(country_ai())
    "Antarctica" -> Ok(country_aq())
    "Antigua and Barbuda" -> Ok(country_ag())
    "Argentina" -> Ok(country_ar())
    "Armenia" -> Ok(country_am())
    "Aruba" -> Ok(country_aw())
    "Australia" -> Ok(country_au())
    "Austria" -> Ok(country_at())
    "Azerbaijan" -> Ok(country_az())
    "Bahamas" -> Ok(country_bs())
    "Bahrain" -> Ok(country_bh())
    "Bangladesh" -> Ok(country_bd())
    "Barbados" -> Ok(country_bb())
    "Belarus" -> Ok(country_by())
    "Belgium" -> Ok(country_be())
    "Belize" -> Ok(country_bz())
    "Benin" -> Ok(country_bj())
    "Bermuda" -> Ok(country_bm())
    "Bhutan" -> Ok(country_bt())
    "Bolivia (Plurinational State of)" -> Ok(country_bo())
    "Bonaire, Sint Eustatius and Saba" -> Ok(country_bq())
    "Bosnia and Herzegovina" -> Ok(country_ba())
    "Botswana" -> Ok(country_bw())
    "Bouvet Island" -> Ok(country_bv())
    "Brazil" -> Ok(country_br())
    "British Indian Ocean Territory" -> Ok(country_io())
    "Brunei Darussalam" -> Ok(country_bn())
    "Bulgaria" -> Ok(country_bg())
    "Burkina Faso" -> Ok(country_bf())
    "Burundi" -> Ok(country_bi())
    "Cabo Verde" -> Ok(country_cv())
    "Cambodia" -> Ok(country_kh())
    "Cameroon" -> Ok(country_cm())
    "Canada" -> Ok(country_ca())
    "Cayman Islands" -> Ok(country_ky())
    "Central African Republic" -> Ok(country_cf())
    "Chad" -> Ok(country_td())
    "Chile" -> Ok(country_cl())
    "China" -> Ok(country_cn())
    "Christmas Island" -> Ok(country_cx())
    "Cocos (Keeling) Islands" -> Ok(country_cc())
    "Colombia" -> Ok(country_co())
    "Comoros" -> Ok(country_km())
    "Congo" -> Ok(country_cg())
    "Congo (Democratic Republic of the)" -> Ok(country_cd())
    "Cook Islands" -> Ok(country_ck())
    "Costa Rica" -> Ok(country_cr())
    "Croatia" -> Ok(country_hr())
    "Cuba" -> Ok(country_cu())
    "Curaçao" -> Ok(country_cw())
    "Cyprus" -> Ok(country_cy())
    "Czech Republic" -> Ok(country_cz())
    "Denmark" -> Ok(country_dk())
    "Djibouti" -> Ok(country_dj())
    "Dominica" -> Ok(country_dm())
    "Dominican Republic" -> Ok(country_do())
    "Ecuador" -> Ok(country_ec())
    "Egypt" -> Ok(country_eg())
    "El Salvador" -> Ok(country_sv())
    "Equatorial Guinea" -> Ok(country_gq())
    "Eritrea" -> Ok(country_er())
    "Estonia" -> Ok(country_ee())
    "Ethiopia" -> Ok(country_et())
    "Falkland Islands (Malvinas)" -> Ok(country_fk())
    "Faroe Islands" -> Ok(country_fo())
    "Fiji" -> Ok(country_fj())
    "Finland" -> Ok(country_fi())
    "France" -> Ok(country_fr())
    "French Guiana" -> Ok(country_gf())
    "French Polynesia" -> Ok(country_pf())
    "French Southern Territories" -> Ok(country_tf())
    "Gabon" -> Ok(country_ga())
    "Gambia" -> Ok(country_gm())
    "Georgia" -> Ok(country_ge())
    "Germany" -> Ok(country_de())
    "Ghana" -> Ok(country_gh())
    "Gibraltar" -> Ok(country_gi())
    "Greece" -> Ok(country_gr())
    "Greenland" -> Ok(country_gl())
    "Grenada" -> Ok(country_gd())
    "Guadeloupe" -> Ok(country_gp())
    "Guam" -> Ok(country_gu())
    "Guatemala" -> Ok(country_gt())
    "Guernsey" -> Ok(country_gg())
    "Guinea" -> Ok(country_gn())
    "Guinea-Bissau" -> Ok(country_gw())
    "Guyana" -> Ok(country_gy())
    "Haiti" -> Ok(country_ht())
    "Heard Island and McDonald Islands" -> Ok(country_hm())
    "Honduras" -> Ok(country_hn())
    "Hong Kong" -> Ok(country_hk())
    "Hungary" -> Ok(country_hu())
    "Iceland" -> Ok(country_is())
    "India" -> Ok(country_in())
    "Indonesia" -> Ok(country_id())
    "Iran (Islamic Republic of)" -> Ok(country_ir())
    "Iraq" -> Ok(country_iq())
    "Ireland" -> Ok(country_ie())
    "Isle of Man" -> Ok(country_im())
    "Israel" -> Ok(country_il())
    "Italy" -> Ok(country_it())
    "Ivory Coast" -> Ok(country_ci())
    "Jamaica" -> Ok(country_jm())
    "Japan" -> Ok(country_jp())
    "Jersey" -> Ok(country_je())
    "Jordan" -> Ok(country_jo())
    "Kazakhstan" -> Ok(country_kz())
    "Kenya" -> Ok(country_ke())
    "Kiribati" -> Ok(country_ki())
    "Korea (Democratic People's Republic of)" -> Ok(country_kp())
    "Korea (Republic of)" -> Ok(country_kr())
    "Kuwait" -> Ok(country_kw())
    "Kyrgyzstan" -> Ok(country_kg())
    "Lao People's Democratic Republic" -> Ok(country_la())
    "Latvia" -> Ok(country_lv())
    "Lebanon" -> Ok(country_lb())
    "Lesotho" -> Ok(country_ls())
    "Liberia" -> Ok(country_lr())
    "Libya" -> Ok(country_ly())
    "Liechtenstein" -> Ok(country_li())
    "Lithuania" -> Ok(country_lt())
    "Luxembourg" -> Ok(country_lu())
    "Macao" -> Ok(country_mo())
    "Madagascar" -> Ok(country_mg())
    "Malawi" -> Ok(country_mw())
    "Malaysia" -> Ok(country_my())
    "Maldives" -> Ok(country_mv())
    "Mali" -> Ok(country_ml())
    "Malta" -> Ok(country_mt())
    "Marshall Islands" -> Ok(country_mh())
    "Martinique" -> Ok(country_mq())
    "Mauritania" -> Ok(country_mr())
    "Mauritius" -> Ok(country_mu())
    "Mayotte" -> Ok(country_yt())
    "Mexico" -> Ok(country_mx())
    "Micronesia (Federated States of)" -> Ok(country_fm())
    "Moldova (Republic of)" -> Ok(country_md())
    "Monaco" -> Ok(country_mc())
    "Mongolia" -> Ok(country_mn())
    "Montenegro" -> Ok(country_me())
    "Montserrat" -> Ok(country_ms())
    "Morocco" -> Ok(country_ma())
    "Mozambique" -> Ok(country_mz())
    "Myanmar" -> Ok(country_mm())
    "Namibia" -> Ok(country_na())
    "Nauru" -> Ok(country_nr())
    "Nepal" -> Ok(country_np())
    "Netherlands" -> Ok(country_nl())
    "New Caledonia" -> Ok(country_nc())
    "New Zealand" -> Ok(country_nz())
    "Nicaragua" -> Ok(country_ni())
    "Niger" -> Ok(country_ne())
    "Nigeria" -> Ok(country_ng())
    "Niue" -> Ok(country_nu())
    "Norfolk Island" -> Ok(country_nf())
    "North Macedonia" -> Ok(country_mk())
    "Northern Mariana Islands" -> Ok(country_mp())
    "Norway" -> Ok(country_no())
    "Oman" -> Ok(country_om())
    "Pakistan" -> Ok(country_pk())
    "Palau" -> Ok(country_pw())
    "Palestine, State of" -> Ok(country_ps())
    "Panama" -> Ok(country_pa())
    "Papua New Guinea" -> Ok(country_pg())
    "Paraguay" -> Ok(country_py())
    "Peru" -> Ok(country_pe())
    "Philippines" -> Ok(country_ph())
    "Pitcairn" -> Ok(country_pn())
    "Poland" -> Ok(country_pl())
    "Portugal" -> Ok(country_pt())
    "Puerto Rico" -> Ok(country_pr())
    "Qatar" -> Ok(country_qa())
    "Republic of Kosovo" -> Ok(country_xk())
    "Réunion" -> Ok(country_re())
    "Romania" -> Ok(country_ro())
    "Russian Federation" -> Ok(country_ru())
    "Rwanda" -> Ok(country_rw())
    "Saint Barthélemy" -> Ok(country_bl())
    "Saint Helena, Ascension and Tristan da Cunha" -> Ok(country_sh())
    "Saint Kitts and Nevis" -> Ok(country_kn())
    "Saint Lucia" -> Ok(country_lc())
    "Saint Martin (French part)" -> Ok(country_mf())
    "Saint Pierre and Miquelon" -> Ok(country_pm())
    "Saint Vincent and the Grenadines" -> Ok(country_vc())
    "Samoa" -> Ok(country_ws())
    "San Marino" -> Ok(country_sm())
    "Sao Tome and Principe" -> Ok(country_st())
    "Saudi Arabia" -> Ok(country_sa())
    "Senegal" -> Ok(country_sn())
    "Serbia" -> Ok(country_rs())
    "Seychelles" -> Ok(country_sc())
    "Sierra Leone" -> Ok(country_sl())
    "Singapore" -> Ok(country_sg())
    "Sint Maarten (Dutch part)" -> Ok(country_sx())
    "Slovakia" -> Ok(country_sk())
    "Slovenia" -> Ok(country_si())
    "Solomon Islands" -> Ok(country_sb())
    "Somalia" -> Ok(country_so())
    "South Africa" -> Ok(country_za())
    "South Georgia and the South Sandwich Islands" -> Ok(country_gs())
    "South Sudan" -> Ok(country_ss())
    "Spain" -> Ok(country_es())
    "Sri Lanka" -> Ok(country_lk())
    "Sudan" -> Ok(country_sd())
    "Suriname" -> Ok(country_sr())
    "Svalbard and Jan Mayen" -> Ok(country_sj())
    "Swaziland" -> Ok(country_sz())
    "Sweden" -> Ok(country_se())
    "Switzerland" -> Ok(country_ch())
    "Syrian Arab Republic" -> Ok(country_sy())
    "Taiwan" -> Ok(country_tw())
    "Tajikistan" -> Ok(country_tj())
    "Tanzania, United Republic of" -> Ok(country_tz())
    "Thailand" -> Ok(country_th())
    "Timor-Leste" -> Ok(country_tl())
    "Togo" -> Ok(country_tg())
    "Tokelau" -> Ok(country_tk())
    "Tonga" -> Ok(country_to())
    "Trinidad and Tobago" -> Ok(country_tt())
    "Tunisia" -> Ok(country_tn())
    "Turkey" -> Ok(country_tr())
    "Turkmenistan" -> Ok(country_tm())
    "Turks and Caicos Islands" -> Ok(country_tc())
    "Tuvalu" -> Ok(country_tv())
    "Uganda" -> Ok(country_ug())
    "Ukraine" -> Ok(country_ua())
    "United Arab Emirates" -> Ok(country_ae())
    "United Kingdom of Great Britain and Northern Ireland" -> Ok(country_gb())
    "United States Minor Outlying Islands" -> Ok(country_um())
    "United States of America" -> Ok(country_us())
    "Uruguay" -> Ok(country_uy())
    "Uzbekistan" -> Ok(country_uz())
    "Vanuatu" -> Ok(country_vu())
    "Vatican City" -> Ok(country_va())
    "Venezuela (Bolivarian Republic of)" -> Ok(country_ve())
    "Vietnam" -> Ok(country_vn())
    "Virgin Islands (British)" -> Ok(country_vg())
    "Virgin Islands (U.S.)" -> Ok(country_vi())
    "Wallis and Futuna" -> Ok(country_wf())
    "Western Sahara" -> Ok(country_eh())
    "Yemen" -> Ok(country_ye())
    "Zambia" -> Ok(country_zm())
    "Zimbabwe" -> Ok(country_zw())
    _ -> Error(Nil)
  }
}

fn country_af() {
#(
  "Afghanistan",
  "AF",
  "AFG",
  "004",
  Asia,
  Some("Kabul"),
  [Currency(code: "AFN", name: "Afghan afghani", symbol: "؋")],
  [#("Pashto", "ps", "پښتو"), #("Uzbek", "uz", "Oʻzbek"), #("Turkmen", "tk", "Türkmen")],
  ["93"],
  [duration.add(duration.hours(4), duration.minutes(30))],
)
}

fn country_ax() {
#(
  "Åland Islands",
  "AX",
  "ALA",
  "248",
  Europe,
  Some("Mariehamn"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Swedish", "sv", "svenska")],
  ["358"],
  [duration.hours(2)],
)
}

fn country_al() {
#(
  "Albania",
  "AL",
  "ALB",
  "008",
  Europe,
  Some("Tirana"),
  [Currency(code: "ALL", name: "Albanian lek", symbol: "L")],
  [#("Albanian", "sq", "Shqip")],
  ["355"],
  [duration.hours(1)],
)
}

fn country_dz() {
#(
  "Algeria",
  "DZ",
  "DZA",
  "012",
  Africa,
  Some("Algiers"),
  [Currency(code: "DZD", name: "Algerian dinar", symbol: "د.ج")],
  [#("Arabic", "ar", "العربية")],
  ["213"],
  [duration.hours(1)],
)
}

fn country_as() {
#(
  "American Samoa",
  "AS",
  "ASM",
  "016",
  Oceania,
  Some("Pago Pago"),
  [Currency(code: "USD", name: "United States Dollar", symbol: "$")],
  [#("English", "en", "English"), #("Samoan", "sm", "gagana fa'a Samoa")],
  ["1"],
  [duration.hours(-11)],
)
}

fn country_ad() {
#(
  "Andorra",
  "AD",
  "AND",
  "020",
  Europe,
  Some("Andorra la Vella"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Catalan", "ca", "català")],
  ["376"],
  [duration.hours(1)],
)
}

fn country_ao() {
#(
  "Angola",
  "AO",
  "AGO",
  "024",
  Africa,
  Some("Luanda"),
  [Currency(code: "AOA", name: "Angolan kwanza", symbol: "Kz")],
  [#("Portuguese", "pt", "Português")],
  ["244"],
  [duration.hours(1)],
)
}

fn country_ai() {
#(
  "Anguilla",
  "AI",
  "AIA",
  "660",
  Americas,
  Some("The Valley"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_aq() {
#(
  "Antarctica",
  "AQ",
  "ATA",
  "010",
  Polar,
  None,
  [],
  [#("English", "en", "English"), #("Russian", "ru", "Русский")],
  ["672"],
  [duration.hours(-3), duration.hours(3), duration.hours(5), duration.hours(6), duration.hours(7), duration.hours(8), duration.hours(10), duration.hours(12)],
)
}

fn country_ag() {
#(
  "Antigua and Barbuda",
  "AG",
  "ATG",
  "028",
  Americas,
  Some("Saint John's"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_ar() {
#(
  "Argentina",
  "AR",
  "ARG",
  "032",
  Americas,
  Some("Buenos Aires"),
  [Currency(code: "ARS", name: "Argentine peso", symbol: "$")],
  [#("Spanish", "es", "Español"), #("Guaraní", "gn", "Avañe'ẽ")],
  ["54"],
  [duration.hours(-3)],
)
}

fn country_am() {
#(
  "Armenia",
  "AM",
  "ARM",
  "051",
  Asia,
  Some("Yerevan"),
  [Currency(code: "AMD", name: "Armenian dram", symbol: "֏")],
  [#("Armenian", "hy", "Հայերեն")],
  ["374"],
  [duration.hours(4)],
)
}

fn country_aw() {
#(
  "Aruba",
  "AW",
  "ABW",
  "533",
  Americas,
  Some("Oranjestad"),
  [Currency(code: "AWG", name: "Aruban florin", symbol: "ƒ")],
  [#("Dutch", "nl", "Nederlands"), #("(Eastern) Punjabi", "pa", "ਪੰਜਾਬੀ")],
  ["297"],
  [duration.hours(-4)],
)
}

fn country_au() {
#(
  "Australia",
  "AU",
  "AUS",
  "036",
  Oceania,
  Some("Canberra"),
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["61"],
  [duration.hours(5), duration.add(duration.hours(6), duration.minutes(30)), duration.hours(7), duration.hours(8), duration.add(duration.hours(9), duration.minutes(30)), duration.hours(10), duration.add(duration.hours(10), duration.minutes(30)), duration.add(duration.hours(11), duration.minutes(30))],
)
}

fn country_at() {
#(
  "Austria",
  "AT",
  "AUT",
  "040",
  Europe,
  Some("Vienna"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("German", "de", "Deutsch")],
  ["43"],
  [duration.hours(1)],
)
}

fn country_az() {
#(
  "Azerbaijan",
  "AZ",
  "AZE",
  "031",
  Asia,
  Some("Baku"),
  [Currency(code: "AZN", name: "Azerbaijani manat", symbol: "₼")],
  [#("Azerbaijani", "az", "azərbaycan dili")],
  ["994"],
  [duration.hours(4)],
)
}

fn country_bs() {
#(
  "Bahamas",
  "BS",
  "BHS",
  "044",
  Americas,
  Some("Nassau"),
  [Currency(code: "BSD", name: "Bahamian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-5)],
)
}

fn country_bh() {
#(
  "Bahrain",
  "BH",
  "BHR",
  "048",
  Asia,
  Some("Manama"),
  [Currency(code: "BHD", name: "Bahraini dinar", symbol: ".د.ب")],
  [#("Arabic", "ar", "العربية")],
  ["973"],
  [duration.hours(3)],
)
}

fn country_bd() {
#(
  "Bangladesh",
  "BD",
  "BGD",
  "050",
  Asia,
  Some("Dhaka"),
  [Currency(code: "BDT", name: "Bangladeshi taka", symbol: "৳")],
  [#("Bengali", "bn", "বাংলা")],
  ["880"],
  [duration.hours(6)],
)
}

fn country_bb() {
#(
  "Barbados",
  "BB",
  "BRB",
  "052",
  Americas,
  Some("Bridgetown"),
  [Currency(code: "BBD", name: "Barbadian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_by() {
#(
  "Belarus",
  "BY",
  "BLR",
  "112",
  Europe,
  Some("Minsk"),
  [Currency(code: "BYN", name: "New Belarusian ruble", symbol: "Br"), Currency(code: "BYR", name: "Old Belarusian ruble", symbol: "Br")],
  [#("Belarusian", "be", "беларуская мова"), #("Russian", "ru", "Русский")],
  ["375"],
  [duration.hours(3)],
)
}

fn country_be() {
#(
  "Belgium",
  "BE",
  "BEL",
  "056",
  Europe,
  Some("Brussels"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Dutch", "nl", "Nederlands"), #("French", "fr", "français"), #("German", "de", "Deutsch")],
  ["32"],
  [duration.hours(1)],
)
}

fn country_bz() {
#(
  "Belize",
  "BZ",
  "BLZ",
  "084",
  Americas,
  Some("Belmopan"),
  [Currency(code: "BZD", name: "Belize dollar", symbol: "$")],
  [#("English", "en", "English"), #("Spanish", "es", "Español")],
  ["501"],
  [duration.hours(-6)],
)
}

fn country_bj() {
#(
  "Benin",
  "BJ",
  "BEN",
  "204",
  Africa,
  Some("Porto-Novo"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["229"],
  [duration.hours(1)],
)
}

fn country_bm() {
#(
  "Bermuda",
  "BM",
  "BMU",
  "060",
  Americas,
  Some("Hamilton"),
  [Currency(code: "BMD", name: "Bermudian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_bt() {
#(
  "Bhutan",
  "BT",
  "BTN",
  "064",
  Asia,
  Some("Thimphu"),
  [Currency(code: "BTN", name: "Bhutanese ngultrum", symbol: "Nu."), Currency(code: "INR", name: "Indian rupee", symbol: "₹")],
  [#("Dzongkha", "dz", "རྫོང་ཁ")],
  ["975"],
  [duration.hours(6)],
)
}

fn country_bo() {
#(
  "Bolivia (Plurinational State of)",
  "BO",
  "BOL",
  "068",
  Americas,
  Some("Sucre"),
  [Currency(code: "BOB", name: "Bolivian boliviano", symbol: "Bs.")],
  [#("Spanish", "es", "Español"), #("Aymara", "ay", "aymar aru"), #("Quechua", "qu", "Runa Simi")],
  ["591"],
  [duration.hours(-4)],
)
}

fn country_bq() {
#(
  "Bonaire, Sint Eustatius and Saba",
  "BQ",
  "BES",
  "535",
  Americas,
  Some("Kralendijk"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("Dutch", "nl", "Nederlands")],
  ["599"],
  [duration.hours(-4)],
)
}

fn country_ba() {
#(
  "Bosnia and Herzegovina",
  "BA",
  "BIH",
  "070",
  Europe,
  Some("Sarajevo"),
  [Currency(code: "BAM", name: "Bosnia and Herzegovina convertible mark", symbol: "KM")],
  [#("Bosnian", "bs", "bosanski jezik"), #("Croatian", "hr", "hrvatski jezik"), #("Serbian", "sr", "српски језик")],
  ["387"],
  [duration.hours(1)],
)
}

fn country_bw() {
#(
  "Botswana",
  "BW",
  "BWA",
  "072",
  Africa,
  Some("Gaborone"),
  [Currency(code: "BWP", name: "Botswana pula", symbol: "P")],
  [#("English", "en", "English"), #("Tswana", "tn", "Setswana")],
  ["267"],
  [duration.hours(2)],
)
}

fn country_bv() {
#(
  "Bouvet Island",
  "BV",
  "BVT",
  "074",
  AntarcticOcean,
  None,
  [Currency(code: "NOK", name: "Norwegian krone", symbol: "kr")],
  [#("Norwegian", "no", "Norsk"), #("Norwegian Bokmål", "nb", "Norsk bokmål"), #("Norwegian Nynorsk", "nn", "Norsk nynorsk")],
  ["47"],
  [duration.hours(1)],
)
}

fn country_br() {
#(
  "Brazil",
  "BR",
  "BRA",
  "076",
  Americas,
  Some("Brasília"),
  [Currency(code: "BRL", name: "Brazilian real", symbol: "R$")],
  [#("Portuguese", "pt", "Português")],
  ["55"],
  [duration.hours(-5), duration.hours(-4), duration.hours(-3), duration.hours(-2)],
)
}

fn country_io() {
#(
  "British Indian Ocean Territory",
  "IO",
  "IOT",
  "086",
  Africa,
  Some("Diego Garcia"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["246"],
  [duration.hours(6)],
)
}

fn country_bn() {
#(
  "Brunei Darussalam",
  "BN",
  "BRN",
  "096",
  Asia,
  Some("Bandar Seri Begawan"),
  [Currency(code: "BND", name: "Brunei dollar", symbol: "$"), Currency(code: "SGD", name: "Singapore dollar", symbol: "$")],
  [#("Malay", "ms", "bahasa Melayu")],
  ["673"],
  [duration.hours(8)],
)
}

fn country_bg() {
#(
  "Bulgaria",
  "BG",
  "BGR",
  "100",
  Europe,
  Some("Sofia"),
  [Currency(code: "BGN", name: "Bulgarian lev", symbol: "лв")],
  [#("Bulgarian", "bg", "български език")],
  ["359"],
  [duration.hours(2)],
)
}

fn country_bf() {
#(
  "Burkina Faso",
  "BF",
  "BFA",
  "854",
  Africa,
  Some("Ouagadougou"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Fula", "ff", "Fulfulde")],
  ["226"],
  [duration.empty],
)
}

fn country_bi() {
#(
  "Burundi",
  "BI",
  "BDI",
  "108",
  Africa,
  Some("Gitega"),
  [Currency(code: "BIF", name: "Burundian franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Kirundi", "rn", "Ikirundi")],
  ["257"],
  [duration.hours(2)],
)
}

fn country_cv() {
#(
  "Cabo Verde",
  "CV",
  "CPV",
  "132",
  Africa,
  Some("Praia"),
  [Currency(code: "CVE", name: "Cape Verdean escudo", symbol: "Esc")],
  [#("Portuguese", "pt", "Português")],
  ["238"],
  [duration.hours(-1)],
)
}

fn country_kh() {
#(
  "Cambodia",
  "KH",
  "KHM",
  "116",
  Asia,
  Some("Phnom Penh"),
  [Currency(code: "KHR", name: "Cambodian riel", symbol: "៛"), Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("Khmer", "km", "ខ្មែរ")],
  ["855"],
  [duration.hours(7)],
)
}

fn country_cm() {
#(
  "Cameroon",
  "CM",
  "CMR",
  "120",
  Africa,
  Some("Yaoundé"),
  [Currency(code: "XAF", name: "Central African CFA franc", symbol: "Fr")],
  [#("English", "en", "English"), #("French", "fr", "français")],
  ["237"],
  [duration.hours(1)],
)
}

fn country_ca() {
#(
  "Canada",
  "CA",
  "CAN",
  "124",
  Americas,
  Some("Ottawa"),
  [Currency(code: "CAD", name: "Canadian dollar", symbol: "$")],
  [#("English", "en", "English"), #("French", "fr", "français")],
  ["1"],
  [duration.hours(-8), duration.hours(-7), duration.hours(-6), duration.hours(-5), duration.hours(-4), duration.add(duration.hours(-3), duration.minutes(-30))],
)
}

fn country_ky() {
#(
  "Cayman Islands",
  "KY",
  "CYM",
  "136",
  Americas,
  Some("George Town"),
  [Currency(code: "KYD", name: "Cayman Islands dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-5)],
)
}

fn country_cf() {
#(
  "Central African Republic",
  "CF",
  "CAF",
  "140",
  Africa,
  Some("Bangui"),
  [Currency(code: "XAF", name: "Central African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Sango", "sg", "yângâ tî sängö")],
  ["236"],
  [duration.hours(1)],
)
}

fn country_td() {
#(
  "Chad",
  "TD",
  "TCD",
  "148",
  Africa,
  Some("N'Djamena"),
  [Currency(code: "XAF", name: "Central African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Arabic", "ar", "العربية")],
  ["235"],
  [duration.hours(1)],
)
}

fn country_cl() {
#(
  "Chile",
  "CL",
  "CHL",
  "152",
  Americas,
  Some("Santiago"),
  [Currency(code: "CLP", name: "Chilean peso", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["56"],
  [duration.hours(-6), duration.hours(-4)],
)
}

fn country_cn() {
#(
  "China",
  "CN",
  "CHN",
  "156",
  Asia,
  Some("Beijing"),
  [Currency(code: "CNY", name: "Chinese yuan", symbol: "¥")],
  [#("Chinese", "zh", "中文 (Zhōngwén)")],
  ["86"],
  [duration.hours(8)],
)
}

fn country_cx() {
#(
  "Christmas Island",
  "CX",
  "CXR",
  "162",
  Oceania,
  Some("Flying Fish Cove"),
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["61"],
  [duration.hours(7)],
)
}

fn country_cc() {
#(
  "Cocos (Keeling) Islands",
  "CC",
  "CCK",
  "166",
  Oceania,
  Some("West Island"),
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["61"],
  [duration.add(duration.hours(6), duration.minutes(30))],
)
}

fn country_co() {
#(
  "Colombia",
  "CO",
  "COL",
  "170",
  Americas,
  Some("Bogotá"),
  [Currency(code: "COP", name: "Colombian peso", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["57"],
  [duration.hours(-5)],
)
}

fn country_km() {
#(
  "Comoros",
  "KM",
  "COM",
  "174",
  Africa,
  Some("Moroni"),
  [Currency(code: "KMF", name: "Comorian franc", symbol: "Fr")],
  [#("Arabic", "ar", "العربية"), #("French", "fr", "français")],
  ["269"],
  [duration.hours(3)],
)
}

fn country_cg() {
#(
  "Congo",
  "CG",
  "COG",
  "178",
  Africa,
  Some("Brazzaville"),
  [Currency(code: "XAF", name: "Central African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Lingala", "ln", "Lingála")],
  ["242"],
  [duration.hours(1)],
)
}

fn country_cd() {
#(
  "Congo (Democratic Republic of the)",
  "CD",
  "COD",
  "180",
  Africa,
  Some("Kinshasa"),
  [Currency(code: "CDF", name: "Congolese franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Lingala", "ln", "Lingála"), #("Kongo", "kg", "Kikongo"), #("Swahili", "sw", "Kiswahili"), #("Luba-Katanga", "lu", "Tshiluba")],
  ["243"],
  [duration.hours(1), duration.hours(2)],
)
}

fn country_ck() {
#(
  "Cook Islands",
  "CK",
  "COK",
  "184",
  Oceania,
  Some("Avarua"),
  [Currency(code: "NZD", name: "New Zealand dollar", symbol: "$"), Currency(code: "CKD", name: "Cook Islands dollar", symbol: "$")],
  [#("English", "en", "English"), #("Cook Islands Māori", "", "Māori")],
  ["682"],
  [duration.hours(-10)],
)
}

fn country_cr() {
#(
  "Costa Rica",
  "CR",
  "CRI",
  "188",
  Americas,
  Some("San José"),
  [Currency(code: "CRC", name: "Costa Rican colón", symbol: "₡")],
  [#("Spanish", "es", "Español")],
  ["506"],
  [duration.hours(-6)],
)
}

fn country_hr() {
#(
  "Croatia",
  "HR",
  "HRV",
  "191",
  Europe,
  Some("Zagreb"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Croatian", "hr", "hrvatski jezik")],
  ["385"],
  [duration.hours(1)],
)
}

fn country_cu() {
#(
  "Cuba",
  "CU",
  "CUB",
  "192",
  Americas,
  Some("Havana"),
  [Currency(code: "CUC", name: "Cuban convertible peso", symbol: "$"), Currency(code: "CUP", name: "Cuban peso", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["53"],
  [duration.hours(-5)],
)
}

fn country_cw() {
#(
  "Curaçao",
  "CW",
  "CUW",
  "531",
  Americas,
  Some("Willemstad"),
  [Currency(code: "ANG", name: "Netherlands Antillean guilder", symbol: "ƒ")],
  [#("Dutch", "nl", "Nederlands"), #("(Eastern) Punjabi", "pa", "ਪੰਜਾਬੀ"), #("English", "en", "English")],
  ["599"],
  [duration.hours(-4)],
)
}

fn country_cy() {
#(
  "Cyprus",
  "CY",
  "CYP",
  "196",
  Europe,
  Some("Nicosia"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Greek (modern)", "el", "ελληνικά"), #("Turkish", "tr", "Türkçe"), #("Armenian", "hy", "Հայերեն")],
  ["357"],
  [duration.hours(2)],
)
}

fn country_cz() {
#(
  "Czech Republic",
  "CZ",
  "CZE",
  "203",
  Europe,
  Some("Prague"),
  [Currency(code: "CZK", name: "Czech koruna", symbol: "Kč")],
  [#("Czech", "cs", "čeština"), #("Slovak", "sk", "slovenčina")],
  ["420"],
  [duration.hours(1)],
)
}

fn country_dk() {
#(
  "Denmark",
  "DK",
  "DNK",
  "208",
  Europe,
  Some("Copenhagen"),
  [Currency(code: "DKK", name: "Danish krone", symbol: "kr")],
  [#("Danish", "da", "dansk")],
  ["45"],
  [duration.hours(-4), duration.hours(-3), duration.hours(-1), duration.empty, duration.hours(1)],
)
}

fn country_dj() {
#(
  "Djibouti",
  "DJ",
  "DJI",
  "262",
  Africa,
  Some("Djibouti"),
  [Currency(code: "DJF", name: "Djiboutian franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Arabic", "ar", "العربية")],
  ["253"],
  [duration.hours(3)],
)
}

fn country_dm() {
#(
  "Dominica",
  "DM",
  "DMA",
  "212",
  Americas,
  Some("Roseau"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_do() {
#(
  "Dominican Republic",
  "DO",
  "DOM",
  "214",
  Americas,
  Some("Santo Domingo"),
  [Currency(code: "DOP", name: "Dominican peso", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_ec() {
#(
  "Ecuador",
  "EC",
  "ECU",
  "218",
  Americas,
  Some("Quito"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["593"],
  [duration.hours(-6), duration.hours(-5)],
)
}

fn country_eg() {
#(
  "Egypt",
  "EG",
  "EGY",
  "818",
  Africa,
  Some("Cairo"),
  [Currency(code: "EGP", name: "Egyptian pound", symbol: "£")],
  [#("Arabic", "ar", "العربية")],
  ["20"],
  [duration.hours(2)],
)
}

fn country_sv() {
#(
  "El Salvador",
  "SV",
  "SLV",
  "222",
  Americas,
  Some("San Salvador"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["503"],
  [duration.hours(-6)],
)
}

fn country_gq() {
#(
  "Equatorial Guinea",
  "GQ",
  "GNQ",
  "226",
  Africa,
  Some("Malabo"),
  [Currency(code: "XAF", name: "Central African CFA franc", symbol: "Fr")],
  [#("Spanish", "es", "Español"), #("French", "fr", "français"), #("Portuguese", "pt", "Português"), #("Fang", "", "Fang")],
  ["240"],
  [duration.hours(1)],
)
}

fn country_er() {
#(
  "Eritrea",
  "ER",
  "ERI",
  "232",
  Africa,
  Some("Asmara"),
  [Currency(code: "ERN", name: "Eritrean nakfa", symbol: "Nfk")],
  [#("Tigrinya", "ti", "ትግርኛ"), #("Arabic", "ar", "العربية"), #("English", "en", "English"), #("Tigre", "", "ትግረ"), #("Kunama", "", "Kunama"), #("Saho", "", "Saho"), #("Bilen", "", "ብሊና"), #("Nara", "", "Nara"), #("Afar", "aa", "Afar")],
  ["291"],
  [duration.hours(3)],
)
}

fn country_ee() {
#(
  "Estonia",
  "EE",
  "EST",
  "233",
  Europe,
  Some("Tallinn"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Estonian", "et", "eesti")],
  ["372"],
  [duration.hours(2)],
)
}

fn country_et() {
#(
  "Ethiopia",
  "ET",
  "ETH",
  "231",
  Africa,
  Some("Addis Ababa"),
  [Currency(code: "ETB", name: "Ethiopian birr", symbol: "Br")],
  [#("Amharic", "am", "አማርኛ")],
  ["251"],
  [duration.hours(3)],
)
}

fn country_fk() {
#(
  "Falkland Islands (Malvinas)",
  "FK",
  "FLK",
  "238",
  Americas,
  Some("Stanley"),
  [Currency(code: "FKP", name: "Falkland Islands pound", symbol: "£")],
  [#("English", "en", "English")],
  ["500"],
  [duration.hours(-4)],
)
}

fn country_fo() {
#(
  "Faroe Islands",
  "FO",
  "FRO",
  "234",
  Europe,
  Some("Tórshavn"),
  [Currency(code: "DKK", name: "Danish krone", symbol: "kr"), Currency(code: "FOK", name: "Faroese króna", symbol: "kr")],
  [#("Faroese", "fo", "føroyskt")],
  ["298"],
  [duration.empty],
)
}

fn country_fj() {
#(
  "Fiji",
  "FJ",
  "FJI",
  "242",
  Oceania,
  Some("Suva"),
  [Currency(code: "FJD", name: "Fijian dollar", symbol: "$")],
  [#("English", "en", "English"), #("Fijian", "fj", "vosa Vakaviti"), #("Fiji Hindi", "", "फ़िजी बात"), #("Rotuman", "", "Fäeag Rotuma")],
  ["679"],
  [duration.hours(12)],
)
}

fn country_fi() {
#(
  "Finland",
  "FI",
  "FIN",
  "246",
  Europe,
  Some("Helsinki"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Finnish", "fi", "suomi"), #("Swedish", "sv", "svenska")],
  ["358"],
  [duration.hours(2)],
)
}

fn country_fr() {
#(
  "France",
  "FR",
  "FRA",
  "250",
  Europe,
  Some("Paris"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["33"],
  [duration.hours(-10), duration.add(duration.hours(-9), duration.minutes(-30)), duration.hours(-9), duration.hours(-8), duration.hours(-4), duration.hours(-3), duration.hours(1), duration.hours(2), duration.hours(3), duration.hours(4), duration.hours(5), duration.hours(10), duration.hours(11), duration.hours(12)],
)
}

fn country_gf() {
#(
  "French Guiana",
  "GF",
  "GUF",
  "254",
  Americas,
  Some("Cayenne"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["594"],
  [duration.hours(-3)],
)
}

fn country_pf() {
#(
  "French Polynesia",
  "PF",
  "PYF",
  "258",
  Oceania,
  Some("Papeetē"),
  [Currency(code: "XPF", name: "CFP franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["689"],
  [duration.hours(-10), duration.add(duration.hours(-9), duration.minutes(-30)), duration.hours(-9)],
)
}

fn country_tf() {
#(
  "French Southern Territories",
  "TF",
  "ATF",
  "260",
  Africa,
  Some("Port-aux-Français"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["262"],
  [duration.hours(5)],
)
}

fn country_ga() {
#(
  "Gabon",
  "GA",
  "GAB",
  "266",
  Africa,
  Some("Libreville"),
  [Currency(code: "XAF", name: "Central African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["241"],
  [duration.hours(1)],
)
}

fn country_gm() {
#(
  "Gambia",
  "GM",
  "GMB",
  "270",
  Africa,
  Some("Banjul"),
  [Currency(code: "GMD", name: "Gambian dalasi", symbol: "D")],
  [#("English", "en", "English")],
  ["220"],
  [duration.empty],
)
}

fn country_ge() {
#(
  "Georgia",
  "GE",
  "GEO",
  "268",
  Asia,
  Some("Tbilisi"),
  [Currency(code: "GEL", name: "Georgian Lari", symbol: "ლ")],
  [#("Georgian", "ka", "ქართული")],
  ["995"],
  [duration.hours(-4)],
)
}

fn country_de() {
#(
  "Germany",
  "DE",
  "DEU",
  "276",
  Europe,
  Some("Berlin"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("German", "de", "Deutsch")],
  ["49"],
  [duration.hours(1)],
)
}

fn country_gh() {
#(
  "Ghana",
  "GH",
  "GHA",
  "288",
  Africa,
  Some("Accra"),
  [Currency(code: "GHS", name: "Ghanaian cedi", symbol: "₵")],
  [#("English", "en", "English")],
  ["233"],
  [duration.empty],
)
}

fn country_gi() {
#(
  "Gibraltar",
  "GI",
  "GIB",
  "292",
  Europe,
  Some("Gibraltar"),
  [Currency(code: "GIP", name: "Gibraltar pound", symbol: "£")],
  [#("English", "en", "English")],
  ["350"],
  [duration.hours(1)],
)
}

fn country_gr() {
#(
  "Greece",
  "GR",
  "GRC",
  "300",
  Europe,
  Some("Athens"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Greek (modern)", "el", "ελληνικά")],
  ["30"],
  [duration.hours(2)],
)
}

fn country_gl() {
#(
  "Greenland",
  "GL",
  "GRL",
  "304",
  Americas,
  Some("Nuuk"),
  [Currency(code: "DKK", name: "Danish krone", symbol: "kr")],
  [#("Kalaallisut", "kl", "kalaallisut")],
  ["299"],
  [duration.hours(-4), duration.hours(-3), duration.hours(-1), duration.empty],
)
}

fn country_gd() {
#(
  "Grenada",
  "GD",
  "GRD",
  "308",
  Americas,
  Some("St. George's"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_gp() {
#(
  "Guadeloupe",
  "GP",
  "GLP",
  "312",
  Americas,
  Some("Basse-Terre"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["590"],
  [duration.hours(-4)],
)
}

fn country_gu() {
#(
  "Guam",
  "GU",
  "GUM",
  "316",
  Oceania,
  Some("Hagåtña"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English"), #("Chamorro", "ch", "Chamoru"), #("Spanish", "es", "Español")],
  ["1"],
  [duration.hours(10)],
)
}

fn country_gt() {
#(
  "Guatemala",
  "GT",
  "GTM",
  "320",
  Americas,
  Some("Guatemala City"),
  [Currency(code: "GTQ", name: "Guatemalan quetzal", symbol: "Q")],
  [#("Spanish", "es", "Español")],
  ["502"],
  [duration.hours(-6)],
)
}

fn country_gg() {
#(
  "Guernsey",
  "GG",
  "GGY",
  "831",
  Europe,
  Some("St. Peter Port"),
  [Currency(code: "GBP", name: "British pound", symbol: "£"), Currency(code: "GGP", name: "Guernsey pound", symbol: "£")],
  [#("English", "en", "English"), #("French", "fr", "français")],
  ["44"],
  [duration.empty],
)
}

fn country_gn() {
#(
  "Guinea",
  "GN",
  "GIN",
  "324",
  Africa,
  Some("Conakry"),
  [Currency(code: "GNF", name: "Guinean franc", symbol: "Fr")],
  [#("French", "fr", "français"), #("Fula", "ff", "Fulfulde")],
  ["224"],
  [duration.empty],
)
}

fn country_gw() {
#(
  "Guinea-Bissau",
  "GW",
  "GNB",
  "624",
  Africa,
  Some("Bissau"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("Portuguese", "pt", "Português")],
  ["245"],
  [duration.empty],
)
}

fn country_gy() {
#(
  "Guyana",
  "GY",
  "GUY",
  "328",
  Americas,
  Some("Georgetown"),
  [Currency(code: "GYD", name: "Guyanese dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["592"],
  [duration.hours(-4)],
)
}

fn country_ht() {
#(
  "Haiti",
  "HT",
  "HTI",
  "332",
  Americas,
  Some("Port-au-Prince"),
  [Currency(code: "HTG", name: "Haitian gourde", symbol: "G")],
  [#("French", "fr", "français"), #("Haitian", "ht", "Kreyòl ayisyen")],
  ["509"],
  [duration.hours(-5)],
)
}

fn country_hm() {
#(
  "Heard Island and McDonald Islands",
  "HM",
  "HMD",
  "334",
  Antarctic,
  None,
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["672"],
  [duration.hours(5)],
)
}

fn country_hn() {
#(
  "Honduras",
  "HN",
  "HND",
  "340",
  Americas,
  Some("Tegucigalpa"),
  [Currency(code: "HNL", name: "Honduran lempira", symbol: "L")],
  [#("Spanish", "es", "Español")],
  ["504"],
  [duration.hours(-6)],
)
}

fn country_hk() {
#(
  "Hong Kong",
  "HK",
  "HKG",
  "344",
  Asia,
  Some("City of Victoria"),
  [Currency(code: "HKD", name: "Hong Kong dollar", symbol: "$")],
  [#("English", "en", "English"), #("Chinese", "zh", "中文 (Zhōngwén)")],
  ["852"],
  [duration.hours(8)],
)
}

fn country_hu() {
#(
  "Hungary",
  "HU",
  "HUN",
  "348",
  Europe,
  Some("Budapest"),
  [Currency(code: "HUF", name: "Hungarian forint", symbol: "Ft")],
  [#("Hungarian", "hu", "magyar")],
  ["36"],
  [duration.hours(1)],
)
}

fn country_is() {
#(
  "Iceland",
  "IS",
  "ISL",
  "352",
  Europe,
  Some("Reykjavík"),
  [Currency(code: "ISK", name: "Icelandic króna", symbol: "kr")],
  [#("Icelandic", "is", "Íslenska")],
  ["354"],
  [duration.empty],
)
}

fn country_in() {
#(
  "India",
  "IN",
  "IND",
  "356",
  Asia,
  Some("New Delhi"),
  [Currency(code: "INR", name: "Indian rupee", symbol: "₹")],
  [#("Hindi", "hi", "हिन्दी"), #("English", "en", "English")],
  ["91"],
  [duration.add(duration.hours(5), duration.minutes(30))],
)
}

fn country_id() {
#(
  "Indonesia",
  "ID",
  "IDN",
  "360",
  Asia,
  Some("Jakarta"),
  [Currency(code: "IDR", name: "Indonesian rupiah", symbol: "Rp")],
  [#("Indonesian", "id", "Bahasa Indonesia")],
  ["62"],
  [duration.hours(7), duration.hours(8), duration.hours(9)],
)
}

fn country_ir() {
#(
  "Iran (Islamic Republic of)",
  "IR",
  "IRN",
  "364",
  Asia,
  Some("Tehran"),
  [Currency(code: "IRR", name: "Iranian rial", symbol: "﷼")],
  [#("Persian (Farsi)", "fa", "فارسی")],
  ["98"],
  [duration.add(duration.hours(3), duration.minutes(30))],
)
}

fn country_iq() {
#(
  "Iraq",
  "IQ",
  "IRQ",
  "368",
  Asia,
  Some("Baghdad"),
  [Currency(code: "IQD", name: "Iraqi dinar", symbol: "ع.د")],
  [#("Arabic", "ar", "العربية"), #("Kurdish", "ku", "Kurdî")],
  ["964"],
  [duration.hours(3)],
)
}

fn country_ie() {
#(
  "Ireland",
  "IE",
  "IRL",
  "372",
  Europe,
  Some("Dublin"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Irish", "ga", "Gaeilge"), #("English", "en", "English")],
  ["353"],
  [duration.empty],
)
}

fn country_im() {
#(
  "Isle of Man",
  "IM",
  "IMN",
  "833",
  Europe,
  Some("Douglas"),
  [Currency(code: "GBP", name: "British pound", symbol: "£"), Currency(code: "IMP[G]", name: "Manx pound", symbol: "£")],
  [#("English", "en", "English"), #("Manx", "gv", "Gaelg")],
  ["44"],
  [duration.empty],
)
}

fn country_il() {
#(
  "Israel",
  "IL",
  "ISR",
  "376",
  Asia,
  Some("Jerusalem"),
  [Currency(code: "ILS", name: "Israeli new shekel", symbol: "₪")],
  [#("Hebrew (modern)", "he", "עברית"), #("Arabic", "ar", "العربية")],
  ["972"],
  [duration.hours(2)],
)
}

fn country_it() {
#(
  "Italy",
  "IT",
  "ITA",
  "380",
  Europe,
  Some("Rome"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Italian", "it", "Italiano")],
  ["39"],
  [duration.hours(1)],
)
}

fn country_ci() {
#(
  "Ivory Coast",
  "CI",
  "CIV",
  "384",
  Africa,
  Some("Yamoussoukro"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["225"],
  [duration.empty],
)
}

fn country_jm() {
#(
  "Jamaica",
  "JM",
  "JAM",
  "388",
  Americas,
  Some("Kingston"),
  [Currency(code: "JMD", name: "Jamaican dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-5)],
)
}

fn country_jp() {
#(
  "Japan",
  "JP",
  "JPN",
  "392",
  Asia,
  Some("Tokyo"),
  [Currency(code: "JPY", name: "Japanese yen", symbol: "¥")],
  [#("Japanese", "ja", "日本語 (にほんご)")],
  ["81"],
  [duration.hours(9)],
)
}

fn country_je() {
#(
  "Jersey",
  "JE",
  "JEY",
  "832",
  Europe,
  Some("Saint Helier"),
  [Currency(code: "GBP", name: "British pound", symbol: "£"), Currency(code: "JEP[G]", name: "Jersey pound", symbol: "£")],
  [#("English", "en", "English"), #("French", "fr", "français")],
  ["44"],
  [duration.hours(1)],
)
}

fn country_jo() {
#(
  "Jordan",
  "JO",
  "JOR",
  "400",
  Asia,
  Some("Amman"),
  [Currency(code: "JOD", name: "Jordanian dinar", symbol: "د.ا")],
  [#("Arabic", "ar", "العربية")],
  ["962"],
  [duration.hours(3)],
)
}

fn country_kz() {
#(
  "Kazakhstan",
  "KZ",
  "KAZ",
  "398",
  Asia,
  Some("Nur-Sultan"),
  [Currency(code: "KZT", name: "Kazakhstani tenge", symbol: "₸")],
  [#("Kazakh", "kk", "қазақ тілі"), #("Russian", "ru", "Русский")],
  ["76", "77"],
  [duration.hours(5), duration.hours(6)],
)
}

fn country_ke() {
#(
  "Kenya",
  "KE",
  "KEN",
  "404",
  Africa,
  Some("Nairobi"),
  [Currency(code: "KES", name: "Kenyan shilling", symbol: "Sh")],
  [#("English", "en", "English"), #("Swahili", "sw", "Kiswahili")],
  ["254"],
  [duration.hours(3)],
)
}

fn country_ki() {
#(
  "Kiribati",
  "KI",
  "KIR",
  "296",
  Oceania,
  Some("South Tarawa"),
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$"), Currency(code: "KID", name: "Kiribati dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["686"],
  [duration.hours(12), duration.hours(13), duration.hours(14)],
)
}

fn country_kp() {
#(
  "Korea (Democratic People's Republic of)",
  "KP",
  "PRK",
  "408",
  Asia,
  Some("Pyongyang"),
  [Currency(code: "KPW", name: "North Korean won", symbol: "₩")],
  [#("Korean", "ko", "한국어")],
  ["850"],
  [duration.hours(9)],
)
}

fn country_kr() {
#(
  "Korea (Republic of)",
  "KR",
  "KOR",
  "410",
  Asia,
  Some("Seoul"),
  [Currency(code: "KRW", name: "South Korean won", symbol: "₩")],
  [#("Korean", "ko", "한국어")],
  ["82"],
  [duration.hours(9)],
)
}

fn country_kw() {
#(
  "Kuwait",
  "KW",
  "KWT",
  "414",
  Asia,
  Some("Kuwait City"),
  [Currency(code: "KWD", name: "Kuwaiti dinar", symbol: "د.ك")],
  [#("Arabic", "ar", "العربية")],
  ["965"],
  [duration.hours(3)],
)
}

fn country_kg() {
#(
  "Kyrgyzstan",
  "KG",
  "KGZ",
  "417",
  Asia,
  Some("Bishkek"),
  [Currency(code: "KGS", name: "Kyrgyzstani som", symbol: "с")],
  [#("Kyrgyz", "ky", "Кыргызча"), #("Russian", "ru", "Русский")],
  ["996"],
  [duration.hours(6)],
)
}

fn country_la() {
#(
  "Lao People's Democratic Republic",
  "LA",
  "LAO",
  "418",
  Asia,
  Some("Vientiane"),
  [Currency(code: "LAK", name: "Lao kip", symbol: "₭")],
  [#("Lao", "lo", "ພາສາລາວ")],
  ["856"],
  [duration.hours(7)],
)
}

fn country_lv() {
#(
  "Latvia",
  "LV",
  "LVA",
  "428",
  Europe,
  Some("Riga"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Latvian", "lv", "latviešu valoda")],
  ["371"],
  [duration.hours(2)],
)
}

fn country_lb() {
#(
  "Lebanon",
  "LB",
  "LBN",
  "422",
  Asia,
  Some("Beirut"),
  [Currency(code: "LBP", name: "Lebanese pound", symbol: "ل.ل")],
  [#("Arabic", "ar", "العربية"), #("French", "fr", "français")],
  ["961"],
  [duration.hours(2)],
)
}

fn country_ls() {
#(
  "Lesotho",
  "LS",
  "LSO",
  "426",
  Africa,
  Some("Maseru"),
  [Currency(code: "LSL", name: "Lesotho loti", symbol: "L"), Currency(code: "ZAR", name: "South African rand", symbol: "R")],
  [#("English", "en", "English"), #("Southern Sotho", "st", "Sesotho")],
  ["266"],
  [duration.hours(2)],
)
}

fn country_lr() {
#(
  "Liberia",
  "LR",
  "LBR",
  "430",
  Africa,
  Some("Monrovia"),
  [Currency(code: "LRD", name: "Liberian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["231"],
  [duration.empty],
)
}

fn country_ly() {
#(
  "Libya",
  "LY",
  "LBY",
  "434",
  Africa,
  Some("Tripoli"),
  [Currency(code: "LYD", name: "Libyan dinar", symbol: "ل.د")],
  [#("Arabic", "ar", "العربية")],
  ["218"],
  [duration.hours(1)],
)
}

fn country_li() {
#(
  "Liechtenstein",
  "LI",
  "LIE",
  "438",
  Europe,
  Some("Vaduz"),
  [Currency(code: "CHF", name: "Swiss franc", symbol: "Fr")],
  [#("German", "de", "Deutsch")],
  ["423"],
  [duration.hours(1)],
)
}

fn country_lt() {
#(
  "Lithuania",
  "LT",
  "LTU",
  "440",
  Europe,
  Some("Vilnius"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Lithuanian", "lt", "lietuvių kalba")],
  ["370"],
  [duration.hours(2)],
)
}

fn country_lu() {
#(
  "Luxembourg",
  "LU",
  "LUX",
  "442",
  Europe,
  Some("Luxembourg"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français"), #("German", "de", "Deutsch"), #("Luxembourgish", "lb", "Lëtzebuergesch")],
  ["352"],
  [duration.hours(1)],
)
}

fn country_mo() {
#(
  "Macao",
  "MO",
  "MAC",
  "446",
  Asia,
  None,
  [Currency(code: "MOP", name: "Macanese pataca", symbol: "P")],
  [#("Chinese", "zh", "中文 (Zhōngwén)"), #("Portuguese", "pt", "Português")],
  ["853"],
  [duration.hours(8)],
)
}

fn country_mg() {
#(
  "Madagascar",
  "MG",
  "MDG",
  "450",
  Africa,
  Some("Antananarivo"),
  [Currency(code: "MGA", name: "Malagasy ariary", symbol: "Ar")],
  [#("French", "fr", "français"), #("Malagasy", "mg", "fiteny malagasy")],
  ["261"],
  [duration.hours(3)],
)
}

fn country_mw() {
#(
  "Malawi",
  "MW",
  "MWI",
  "454",
  Africa,
  Some("Lilongwe"),
  [Currency(code: "MWK", name: "Malawian kwacha", symbol: "MK")],
  [#("English", "en", "English"), #("Chichewa", "ny", "chiCheŵa")],
  ["265"],
  [duration.hours(2)],
)
}

fn country_my() {
#(
  "Malaysia",
  "MY",
  "MYS",
  "458",
  Asia,
  Some("Kuala Lumpur"),
  [Currency(code: "MYR", name: "Malaysian ringgit", symbol: "RM")],
  [#("Malaysian", "ms", "بهاس مليسيا")],
  ["60"],
  [duration.hours(8)],
)
}

fn country_mv() {
#(
  "Maldives",
  "MV",
  "MDV",
  "462",
  Asia,
  Some("Malé"),
  [Currency(code: "MVR", name: "Maldivian rufiyaa", symbol: ".ރ")],
  [#("Divehi", "dv", "ދިވެހި")],
  ["960"],
  [duration.hours(5)],
)
}

fn country_ml() {
#(
  "Mali",
  "ML",
  "MLI",
  "466",
  Africa,
  Some("Bamako"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["223"],
  [duration.empty],
)
}

fn country_mt() {
#(
  "Malta",
  "MT",
  "MLT",
  "470",
  Europe,
  Some("Valletta"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Maltese", "mt", "Malti"), #("English", "en", "English")],
  ["356"],
  [duration.hours(1)],
)
}

fn country_mh() {
#(
  "Marshall Islands",
  "MH",
  "MHL",
  "584",
  Oceania,
  Some("Majuro"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English"), #("Marshallese", "mh", "Kajin M̧ajeļ")],
  ["692"],
  [duration.hours(12)],
)
}

fn country_mq() {
#(
  "Martinique",
  "MQ",
  "MTQ",
  "474",
  Americas,
  Some("Fort-de-France"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["596"],
  [duration.hours(-4)],
)
}

fn country_mr() {
#(
  "Mauritania",
  "MR",
  "MRT",
  "478",
  Africa,
  Some("Nouakchott"),
  [Currency(code: "MRO", name: "Mauritanian ouguiya", symbol: "UM")],
  [#("Arabic", "ar", "العربية")],
  ["222"],
  [duration.empty],
)
}

fn country_mu() {
#(
  "Mauritius",
  "MU",
  "MUS",
  "480",
  Africa,
  Some("Port Louis"),
  [Currency(code: "MUR", name: "Mauritian rupee", symbol: "₨")],
  [#("English", "en", "English")],
  ["230"],
  [duration.hours(4)],
)
}

fn country_yt() {
#(
  "Mayotte",
  "YT",
  "MYT",
  "175",
  Africa,
  Some("Mamoudzou"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["262"],
  [duration.hours(3)],
)
}

fn country_mx() {
#(
  "Mexico",
  "MX",
  "MEX",
  "484",
  Americas,
  Some("Mexico City"),
  [Currency(code: "MXN", name: "Mexican peso", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["52"],
  [duration.hours(-8), duration.hours(-7), duration.hours(-6)],
)
}

fn country_fm() {
#(
  "Micronesia (Federated States of)",
  "FM",
  "FSM",
  "583",
  Oceania,
  Some("Palikir"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["691"],
  [duration.hours(10), duration.hours(11)],
)
}

fn country_md() {
#(
  "Moldova (Republic of)",
  "MD",
  "MDA",
  "498",
  Europe,
  Some("Chișinău"),
  [Currency(code: "MDL", name: "Moldovan leu", symbol: "L")],
  [#("Romanian", "ro", "Română")],
  ["373"],
  [duration.hours(2)],
)
}

fn country_mc() {
#(
  "Monaco",
  "MC",
  "MCO",
  "492",
  Europe,
  Some("Monaco"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["377"],
  [duration.hours(1)],
)
}

fn country_mn() {
#(
  "Mongolia",
  "MN",
  "MNG",
  "496",
  Asia,
  Some("Ulan Bator"),
  [Currency(code: "MNT", name: "Mongolian tögrög", symbol: "₮")],
  [#("Mongolian", "mn", "Монгол хэл")],
  ["976"],
  [duration.hours(7), duration.hours(8)],
)
}

fn country_me() {
#(
  "Montenegro",
  "ME",
  "MNE",
  "499",
  Europe,
  Some("Podgorica"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Serbian", "sr", "српски језик"), #("Bosnian", "bs", "bosanski jezik"), #("Albanian", "sq", "Shqip"), #("Croatian", "hr", "hrvatski jezik")],
  ["382"],
  [duration.hours(1)],
)
}

fn country_ms() {
#(
  "Montserrat",
  "MS",
  "MSR",
  "500",
  Americas,
  Some("Plymouth"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_ma() {
#(
  "Morocco",
  "MA",
  "MAR",
  "504",
  Africa,
  Some("Rabat"),
  [Currency(code: "MAD", name: "Moroccan dirham", symbol: "د.م.")],
  [#("Arabic", "ar", "العربية")],
  ["212"],
  [duration.empty],
)
}

fn country_mz() {
#(
  "Mozambique",
  "MZ",
  "MOZ",
  "508",
  Africa,
  Some("Maputo"),
  [Currency(code: "MZN", name: "Mozambican metical", symbol: "MT")],
  [#("Portuguese", "pt", "Português")],
  ["258"],
  [duration.hours(2)],
)
}

fn country_mm() {
#(
  "Myanmar",
  "MM",
  "MMR",
  "104",
  Asia,
  Some("Naypyidaw"),
  [Currency(code: "MMK", name: "Burmese kyat", symbol: "Ks")],
  [#("Burmese", "my", "ဗမာစာ")],
  ["95"],
  [duration.add(duration.hours(6), duration.minutes(30))],
)
}

fn country_na() {
#(
  "Namibia",
  "NA",
  "NAM",
  "516",
  Africa,
  Some("Windhoek"),
  [Currency(code: "NAD", name: "Namibian dollar", symbol: "$"), Currency(code: "ZAR", name: "South African rand", symbol: "R")],
  [#("English", "en", "English"), #("Afrikaans", "af", "Afrikaans")],
  ["264"],
  [duration.hours(1)],
)
}

fn country_nr() {
#(
  "Nauru",
  "NR",
  "NRU",
  "520",
  Oceania,
  Some("Yaren"),
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$")],
  [#("English", "en", "English"), #("Nauruan", "na", "Dorerin Naoero")],
  ["674"],
  [duration.hours(12)],
)
}

fn country_np() {
#(
  "Nepal",
  "NP",
  "NPL",
  "524",
  Asia,
  Some("Kathmandu"),
  [Currency(code: "NPR", name: "Nepalese rupee", symbol: "₨")],
  [#("Nepali", "ne", "नेपाली")],
  ["977"],
  [duration.add(duration.hours(5), duration.minutes(45))],
)
}

fn country_nl() {
#(
  "Netherlands",
  "NL",
  "NLD",
  "528",
  Europe,
  Some("Amsterdam"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Dutch", "nl", "Nederlands")],
  ["31"],
  [duration.hours(-4), duration.hours(1)],
)
}

fn country_nc() {
#(
  "New Caledonia",
  "NC",
  "NCL",
  "540",
  Oceania,
  Some("Nouméa"),
  [Currency(code: "XPF", name: "CFP franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["687"],
  [duration.hours(11)],
)
}

fn country_nz() {
#(
  "New Zealand",
  "NZ",
  "NZL",
  "554",
  Oceania,
  Some("Wellington"),
  [Currency(code: "NZD", name: "New Zealand dollar", symbol: "$")],
  [#("English", "en", "English"), #("Māori", "mi", "te reo Māori")],
  ["64"],
  [duration.hours(-11), duration.hours(-10), duration.hours(12), duration.add(duration.hours(12), duration.minutes(45)), duration.hours(13)],
)
}

fn country_ni() {
#(
  "Nicaragua",
  "NI",
  "NIC",
  "558",
  Americas,
  Some("Managua"),
  [Currency(code: "NIO", name: "Nicaraguan córdoba", symbol: "C$")],
  [#("Spanish", "es", "Español")],
  ["505"],
  [duration.hours(-6)],
)
}

fn country_ne() {
#(
  "Niger",
  "NE",
  "NER",
  "562",
  Africa,
  Some("Niamey"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["227"],
  [duration.hours(1)],
)
}

fn country_ng() {
#(
  "Nigeria",
  "NG",
  "NGA",
  "566",
  Africa,
  Some("Abuja"),
  [Currency(code: "NGN", name: "Nigerian naira", symbol: "₦")],
  [#("English", "en", "English")],
  ["234"],
  [duration.hours(1)],
)
}

fn country_nu() {
#(
  "Niue",
  "NU",
  "NIU",
  "570",
  Oceania,
  Some("Alofi"),
  [Currency(code: "NZD", name: "New Zealand dollar", symbol: "$"), Currency(code: "NZD", name: "Niue dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["683"],
  [duration.hours(-11)],
)
}

fn country_nf() {
#(
  "Norfolk Island",
  "NF",
  "NFK",
  "574",
  Oceania,
  Some("Kingston"),
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["672"],
  [duration.add(duration.hours(11), duration.minutes(30))],
)
}

fn country_mk() {
#(
  "North Macedonia",
  "MK",
  "MKD",
  "807",
  Europe,
  Some("Skopje"),
  [Currency(code: "MKD", name: "Macedonian denar", symbol: "ден")],
  [#("Macedonian", "mk", "македонски јазик")],
  ["389"],
  [duration.hours(1)],
)
}

fn country_mp() {
#(
  "Northern Mariana Islands",
  "MP",
  "MNP",
  "580",
  Oceania,
  Some("Saipan"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English"), #("Chamorro", "ch", "Chamoru")],
  ["1"],
  [duration.hours(10)],
)
}

fn country_no() {
#(
  "Norway",
  "NO",
  "NOR",
  "578",
  Europe,
  Some("Oslo"),
  [Currency(code: "NOK", name: "Norwegian krone", symbol: "kr")],
  [#("Norwegian", "no", "Norsk"), #("Norwegian Bokmål", "nb", "Norsk bokmål"), #("Norwegian Nynorsk", "nn", "Norsk nynorsk")],
  ["47"],
  [duration.hours(1)],
)
}

fn country_om() {
#(
  "Oman",
  "OM",
  "OMN",
  "512",
  Asia,
  Some("Muscat"),
  [Currency(code: "OMR", name: "Omani rial", symbol: "ر.ع.")],
  [#("Arabic", "ar", "العربية")],
  ["968"],
  [duration.hours(4)],
)
}

fn country_pk() {
#(
  "Pakistan",
  "PK",
  "PAK",
  "586",
  Asia,
  Some("Islamabad"),
  [Currency(code: "PKR", name: "Pakistani rupee", symbol: "₨")],
  [#("Urdu", "ur", "اردو"), #("English", "en", "English")],
  ["92"],
  [duration.hours(5)],
)
}

fn country_pw() {
#(
  "Palau",
  "PW",
  "PLW",
  "585",
  Oceania,
  Some("Ngerulmud"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["680"],
  [duration.hours(9)],
)
}

fn country_ps() {
#(
  "Palestine, State of",
  "PS",
  "PSE",
  "275",
  Asia,
  Some("Ramallah"),
  [Currency(code: "EGP", name: "Egyptian pound", symbol: "E£"), Currency(code: "ILS", name: "Israeli new shekel", symbol: "₪"), Currency(code: "JOD", name: "Jordanian dinar", symbol: "د.أ")],
  [#("Arabic", "ar", "العربية")],
  ["970"],
  [duration.hours(2)],
)
}

fn country_pa() {
#(
  "Panama",
  "PA",
  "PAN",
  "591",
  Americas,
  Some("Panama City"),
  [Currency(code: "PAB", name: "Panamanian balboa", symbol: "B/."), Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["507"],
  [duration.hours(-5)],
)
}

fn country_pg() {
#(
  "Papua New Guinea",
  "PG",
  "PNG",
  "598",
  Oceania,
  Some("Port Moresby"),
  [Currency(code: "PGK", name: "Papua New Guinean kina", symbol: "K")],
  [#("English", "en", "English")],
  ["675"],
  [duration.hours(10)],
)
}

fn country_py() {
#(
  "Paraguay",
  "PY",
  "PRY",
  "600",
  Americas,
  Some("Asunción"),
  [Currency(code: "PYG", name: "Paraguayan guaraní", symbol: "₲")],
  [#("Spanish", "es", "Español"), #("Guaraní", "gn", "Avañe'ẽ")],
  ["595"],
  [duration.hours(-4)],
)
}

fn country_pe() {
#(
  "Peru",
  "PE",
  "PER",
  "604",
  Americas,
  Some("Lima"),
  [Currency(code: "PEN", name: "Peruvian sol", symbol: "S/.")],
  [#("Spanish", "es", "Español")],
  ["51"],
  [duration.hours(-5)],
)
}

fn country_ph() {
#(
  "Philippines",
  "PH",
  "PHL",
  "608",
  Asia,
  Some("Manila"),
  [Currency(code: "PHP", name: "Philippine peso", symbol: "₱")],
  [#("English", "en", "English")],
  ["63"],
  [duration.hours(8)],
)
}

fn country_pn() {
#(
  "Pitcairn",
  "PN",
  "PCN",
  "612",
  Oceania,
  Some("Adamstown"),
  [Currency(code: "NZD", name: "New Zealand dollar", symbol: "$"), Currency(code: "PND", name: "Pitcairn Islands dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["64"],
  [duration.hours(-8)],
)
}

fn country_pl() {
#(
  "Poland",
  "PL",
  "POL",
  "616",
  Europe,
  Some("Warsaw"),
  [Currency(code: "PLN", name: "Polish złoty", symbol: "zł")],
  [#("Polish", "pl", "język polski")],
  ["48"],
  [duration.hours(1)],
)
}

fn country_pt() {
#(
  "Portugal",
  "PT",
  "PRT",
  "620",
  Europe,
  Some("Lisbon"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Portuguese", "pt", "Português")],
  ["351"],
  [duration.hours(-1), duration.empty],
)
}

fn country_pr() {
#(
  "Puerto Rico",
  "PR",
  "PRI",
  "630",
  Americas,
  Some("San Juan"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("Spanish", "es", "Español"), #("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_qa() {
#(
  "Qatar",
  "QA",
  "QAT",
  "634",
  Asia,
  Some("Doha"),
  [Currency(code: "QAR", name: "Qatari riyal", symbol: "ر.ق")],
  [#("Arabic", "ar", "العربية")],
  ["974"],
  [duration.hours(3)],
)
}

fn country_xk() {
#(
  "Republic of Kosovo",
  "XK",
  "UNK",
  "926",
  Europe,
  Some("Pristina"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Albanian", "sq", "Shqip"), #("Serbian", "sr", "српски језик")],
  ["383"],
  [duration.hours(1)],
)
}

fn country_re() {
#(
  "Réunion",
  "RE",
  "REU",
  "638",
  Africa,
  Some("Saint-Denis"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["262"],
  [duration.hours(4)],
)
}

fn country_ro() {
#(
  "Romania",
  "RO",
  "ROU",
  "642",
  Europe,
  Some("Bucharest"),
  [Currency(code: "RON", name: "Romanian leu", symbol: "lei")],
  [#("Romanian", "ro", "Română")],
  ["40"],
  [duration.hours(2)],
)
}

fn country_ru() {
#(
  "Russian Federation",
  "RU",
  "RUS",
  "643",
  Europe,
  Some("Moscow"),
  [Currency(code: "RUB", name: "Russian ruble", symbol: "₽")],
  [#("Russian", "ru", "Русский")],
  ["7"],
  [duration.hours(3), duration.hours(4), duration.hours(6), duration.hours(7), duration.hours(8), duration.hours(9), duration.hours(10), duration.hours(11), duration.hours(12)],
)
}

fn country_rw() {
#(
  "Rwanda",
  "RW",
  "RWA",
  "646",
  Africa,
  Some("Kigali"),
  [Currency(code: "RWF", name: "Rwandan franc", symbol: "Fr")],
  [#("Kinyarwanda", "rw", "Ikinyarwanda"), #("English", "en", "English"), #("French", "fr", "français")],
  ["250"],
  [duration.hours(2)],
)
}

fn country_bl() {
#(
  "Saint Barthélemy",
  "BL",
  "BLM",
  "652",
  Americas,
  Some("Gustavia"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["590"],
  [duration.hours(-4)],
)
}

fn country_sh() {
#(
  "Saint Helena, Ascension and Tristan da Cunha",
  "SH",
  "SHN",
  "654",
  Africa,
  Some("Jamestown"),
  [Currency(code: "SHP", name: "Saint Helena pound", symbol: "£")],
  [#("English", "en", "English")],
  ["290"],
  [duration.empty],
)
}

fn country_kn() {
#(
  "Saint Kitts and Nevis",
  "KN",
  "KNA",
  "659",
  Americas,
  Some("Basseterre"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_lc() {
#(
  "Saint Lucia",
  "LC",
  "LCA",
  "662",
  Americas,
  Some("Castries"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_mf() {
#(
  "Saint Martin (French part)",
  "MF",
  "MAF",
  "663",
  Americas,
  Some("Marigot"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("English", "en", "English"), #("French", "fr", "français"), #("Dutch", "nl", "Nederlands")],
  ["590"],
  [duration.hours(-4)],
)
}

fn country_pm() {
#(
  "Saint Pierre and Miquelon",
  "PM",
  "SPM",
  "666",
  Americas,
  Some("Saint-Pierre"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("French", "fr", "français")],
  ["508"],
  [duration.hours(-3)],
)
}

fn country_vc() {
#(
  "Saint Vincent and the Grenadines",
  "VC",
  "VCT",
  "670",
  Americas,
  Some("Kingstown"),
  [Currency(code: "XCD", name: "East Caribbean dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_ws() {
#(
  "Samoa",
  "WS",
  "WSM",
  "882",
  Oceania,
  Some("Apia"),
  [Currency(code: "WST", name: "Samoan tālā", symbol: "T")],
  [#("Samoan", "sm", "gagana fa'a Samoa"), #("English", "en", "English")],
  ["685"],
  [duration.hours(13)],
)
}

fn country_sm() {
#(
  "San Marino",
  "SM",
  "SMR",
  "674",
  Europe,
  Some("City of San Marino"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Italian", "it", "Italiano")],
  ["378"],
  [duration.hours(1)],
)
}

fn country_st() {
#(
  "Sao Tome and Principe",
  "ST",
  "STP",
  "678",
  Africa,
  Some("São Tomé"),
  [Currency(code: "STD", name: "São Tomé and Príncipe dobra", symbol: "Db")],
  [#("Portuguese", "pt", "Português")],
  ["239"],
  [duration.empty],
)
}

fn country_sa() {
#(
  "Saudi Arabia",
  "SA",
  "SAU",
  "682",
  Asia,
  Some("Riyadh"),
  [Currency(code: "SAR", name: "Saudi riyal", symbol: "ر.س")],
  [#("Arabic", "ar", "العربية")],
  ["966"],
  [duration.hours(3)],
)
}

fn country_sn() {
#(
  "Senegal",
  "SN",
  "SEN",
  "686",
  Africa,
  Some("Dakar"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["221"],
  [duration.empty],
)
}

fn country_rs() {
#(
  "Serbia",
  "RS",
  "SRB",
  "688",
  Europe,
  Some("Belgrade"),
  [Currency(code: "RSD", name: "Serbian dinar", symbol: "дин.")],
  [#("Serbian", "sr", "српски језик")],
  ["381"],
  [duration.hours(1)],
)
}

fn country_sc() {
#(
  "Seychelles",
  "SC",
  "SYC",
  "690",
  Africa,
  Some("Victoria"),
  [Currency(code: "SCR", name: "Seychellois rupee", symbol: "₨")],
  [#("French", "fr", "français"), #("English", "en", "English")],
  ["248"],
  [duration.hours(4)],
)
}

fn country_sl() {
#(
  "Sierra Leone",
  "SL",
  "SLE",
  "694",
  Africa,
  Some("Freetown"),
  [Currency(code: "SLL", name: "Sierra Leonean leone", symbol: "Le")],
  [#("English", "en", "English")],
  ["232"],
  [duration.empty],
)
}

fn country_sg() {
#(
  "Singapore",
  "SG",
  "SGP",
  "702",
  Asia,
  Some("Singapore"),
  [Currency(code: "SGD", name: "Singapore dollar", symbol: "$")],
  [#("English", "en", "English"), #("Malay", "ms", "bahasa Melayu"), #("Tamil", "ta", "தமிழ்"), #("Chinese", "zh", "中文 (Zhōngwén)")],
  ["65"],
  [duration.hours(8)],
)
}

fn country_sx() {
#(
  "Sint Maarten (Dutch part)",
  "SX",
  "SXM",
  "534",
  Americas,
  Some("Philipsburg"),
  [Currency(code: "ANG", name: "Netherlands Antillean guilder", symbol: "ƒ")],
  [#("Dutch", "nl", "Nederlands"), #("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_sk() {
#(
  "Slovakia",
  "SK",
  "SVK",
  "703",
  Europe,
  Some("Bratislava"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Slovak", "sk", "slovenčina")],
  ["421"],
  [duration.hours(1)],
)
}

fn country_si() {
#(
  "Slovenia",
  "SI",
  "SVN",
  "705",
  Europe,
  Some("Ljubljana"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Slovene", "sl", "slovenski jezik")],
  ["386"],
  [duration.hours(1)],
)
}

fn country_sb() {
#(
  "Solomon Islands",
  "SB",
  "SLB",
  "090",
  Oceania,
  Some("Honiara"),
  [Currency(code: "SBD", name: "Solomon Islands dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["677"],
  [duration.hours(11)],
)
}

fn country_so() {
#(
  "Somalia",
  "SO",
  "SOM",
  "706",
  Africa,
  Some("Mogadishu"),
  [Currency(code: "SOS", name: "Somali shilling", symbol: "Sh")],
  [#("Somali", "so", "Soomaaliga"), #("Arabic", "ar", "العربية")],
  ["252"],
  [duration.hours(3)],
)
}

fn country_za() {
#(
  "South Africa",
  "ZA",
  "ZAF",
  "710",
  Africa,
  Some("Pretoria"),
  [Currency(code: "ZAR", name: "South African rand", symbol: "R")],
  [#("Afrikaans", "af", "Afrikaans"), #("English", "en", "English"), #("Southern Ndebele", "nr", "isiNdebele"), #("Southern Sotho", "st", "Sesotho"), #("Swati", "ss", "SiSwati"), #("Tswana", "tn", "Setswana"), #("Tsonga", "ts", "Xitsonga"), #("Venda", "ve", "Tshivenḓa"), #("Xhosa", "xh", "isiXhosa"), #("Zulu", "zu", "isiZulu")],
  ["27"],
  [duration.hours(2)],
)
}

fn country_gs() {
#(
  "South Georgia and the South Sandwich Islands",
  "GS",
  "SGS",
  "239",
  Americas,
  Some("King Edward Point"),
  [Currency(code: "FKP", name: "Falkland Islands Pound", symbol: "£")],
  [#("English", "en", "English")],
  ["500"],
  [duration.hours(-2)],
)
}

fn country_ss() {
#(
  "South Sudan",
  "SS",
  "SSD",
  "728",
  Africa,
  Some("Juba"),
  [Currency(code: "SSP", name: "South Sudanese pound", symbol: "£")],
  [#("English", "en", "English")],
  ["211"],
  [duration.hours(3)],
)
}

fn country_es() {
#(
  "Spain",
  "ES",
  "ESP",
  "724",
  Europe,
  Some("Madrid"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Spanish", "es", "Español")],
  ["34"],
  [duration.empty, duration.hours(1)],
)
}

fn country_lk() {
#(
  "Sri Lanka",
  "LK",
  "LKA",
  "144",
  Asia,
  Some("Sri Jayawardenepura Kotte"),
  [Currency(code: "LKR", name: "Sri Lankan rupee", symbol: "Rs")],
  [#("Sinhalese", "si", "සිංහල"), #("Tamil", "ta", "தமிழ்")],
  ["94"],
  [duration.add(duration.hours(5), duration.minutes(30))],
)
}

fn country_sd() {
#(
  "Sudan",
  "SD",
  "SDN",
  "729",
  Africa,
  Some("Khartoum"),
  [Currency(code: "SDG", name: "Sudanese pound", symbol: "ج.س.")],
  [#("Arabic", "ar", "العربية"), #("English", "en", "English")],
  ["249"],
  [duration.hours(3)],
)
}

fn country_sr() {
#(
  "Suriname",
  "SR",
  "SUR",
  "740",
  Americas,
  Some("Paramaribo"),
  [Currency(code: "SRD", name: "Surinamese dollar", symbol: "$")],
  [#("Dutch", "nl", "Nederlands")],
  ["597"],
  [duration.hours(-3)],
)
}

fn country_sj() {
#(
  "Svalbard and Jan Mayen",
  "SJ",
  "SJM",
  "744",
  Europe,
  Some("Longyearbyen"),
  [Currency(code: "NOK", name: "Norwegian krone", symbol: "kr")],
  [#("Norwegian", "no", "Norsk")],
  ["47"],
  [duration.hours(1)],
)
}

fn country_sz() {
#(
  "Swaziland",
  "SZ",
  "SWZ",
  "748",
  Africa,
  Some("Mbabane"),
  [Currency(code: "SZL", name: "Swazi lilangeni", symbol: "L")],
  [#("English", "en", "English"), #("Swati", "ss", "SiSwati")],
  ["268"],
  [duration.hours(2)],
)
}

fn country_se() {
#(
  "Sweden",
  "SE",
  "SWE",
  "752",
  Europe,
  Some("Stockholm"),
  [Currency(code: "SEK", name: "Swedish krona", symbol: "kr")],
  [#("Swedish", "sv", "svenska")],
  ["46"],
  [duration.hours(1)],
)
}

fn country_ch() {
#(
  "Switzerland",
  "CH",
  "CHE",
  "756",
  Europe,
  Some("Bern"),
  [Currency(code: "CHF", name: "Swiss franc", symbol: "Fr")],
  [#("German", "de", "Deutsch"), #("French", "fr", "français"), #("Italian", "it", "Italiano"), #("Romansh", "", "")],
  ["41"],
  [duration.hours(1)],
)
}

fn country_sy() {
#(
  "Syrian Arab Republic",
  "SY",
  "SYR",
  "760",
  Asia,
  Some("Damascus"),
  [Currency(code: "SYP", name: "Syrian pound", symbol: "£")],
  [#("Arabic", "ar", "العربية")],
  ["963"],
  [duration.hours(2)],
)
}

fn country_tw() {
#(
  "Taiwan",
  "TW",
  "TWN",
  "158",
  Asia,
  Some("Taipei"),
  [Currency(code: "TWD", name: "New Taiwan dollar", symbol: "$")],
  [#("Chinese", "zh", "中文 (Zhōngwén)")],
  ["886"],
  [duration.hours(8)],
)
}

fn country_tj() {
#(
  "Tajikistan",
  "TJ",
  "TJK",
  "762",
  Asia,
  Some("Dushanbe"),
  [Currency(code: "TJS", name: "Tajikistani somoni", symbol: "ЅМ")],
  [#("Tajik", "tg", "тоҷикӣ"), #("Russian", "ru", "Русский")],
  ["992"],
  [duration.hours(5)],
)
}

fn country_tz() {
#(
  "Tanzania, United Republic of",
  "TZ",
  "TZA",
  "834",
  Africa,
  Some("Dodoma"),
  [Currency(code: "TZS", name: "Tanzanian shilling", symbol: "Sh")],
  [#("Swahili", "sw", "Kiswahili"), #("English", "en", "English")],
  ["255"],
  [duration.hours(3)],
)
}

fn country_th() {
#(
  "Thailand",
  "TH",
  "THA",
  "764",
  Asia,
  Some("Bangkok"),
  [Currency(code: "THB", name: "Thai baht", symbol: "฿")],
  [#("Thai", "th", "ไทย")],
  ["66"],
  [duration.hours(7)],
)
}

fn country_tl() {
#(
  "Timor-Leste",
  "TL",
  "TLS",
  "626",
  Asia,
  Some("Dili"),
  [Currency(code: "USD", name: "United States Dollar", symbol: "$")],
  [#("Portuguese", "pt", "Português")],
  ["670"],
  [duration.hours(9)],
)
}

fn country_tg() {
#(
  "Togo",
  "TG",
  "TGO",
  "768",
  Africa,
  Some("Lomé"),
  [Currency(code: "XOF", name: "West African CFA franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["228"],
  [duration.empty],
)
}

fn country_tk() {
#(
  "Tokelau",
  "TK",
  "TKL",
  "772",
  Oceania,
  Some("Fakaofo"),
  [Currency(code: "NZD", name: "New Zealand dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["690"],
  [duration.hours(13)],
)
}

fn country_to() {
#(
  "Tonga",
  "TO",
  "TON",
  "776",
  Oceania,
  Some("Nuku'alofa"),
  [Currency(code: "TOP", name: "Tongan paʻanga", symbol: "T$")],
  [#("English", "en", "English"), #("Tonga (Tonga Islands)", "to", "faka Tonga")],
  ["676"],
  [duration.hours(13)],
)
}

fn country_tt() {
#(
  "Trinidad and Tobago",
  "TT",
  "TTO",
  "780",
  Americas,
  Some("Port of Spain"),
  [Currency(code: "TTD", name: "Trinidad and Tobago dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_tn() {
#(
  "Tunisia",
  "TN",
  "TUN",
  "788",
  Africa,
  Some("Tunis"),
  [Currency(code: "TND", name: "Tunisian dinar", symbol: "د.ت")],
  [#("Arabic", "ar", "العربية")],
  ["216"],
  [duration.hours(1)],
)
}

fn country_tr() {
#(
  "Turkey",
  "TR",
  "TUR",
  "792",
  Asia,
  Some("Ankara"),
  [Currency(code: "TRY", name: "Turkish lira", symbol: "₺")],
  [#("Turkish", "tr", "Türkçe")],
  ["90"],
  [duration.hours(3)],
)
}

fn country_tm() {
#(
  "Turkmenistan",
  "TM",
  "TKM",
  "795",
  Asia,
  Some("Ashgabat"),
  [Currency(code: "TMT", name: "Turkmenistan manat", symbol: "m")],
  [#("Turkmen", "tk", "Türkmen"), #("Russian", "ru", "Русский")],
  ["993"],
  [duration.hours(5)],
)
}

fn country_tc() {
#(
  "Turks and Caicos Islands",
  "TC",
  "TCA",
  "796",
  Americas,
  Some("Cockburn Town"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_tv() {
#(
  "Tuvalu",
  "TV",
  "TUV",
  "798",
  Oceania,
  Some("Funafuti"),
  [Currency(code: "AUD", name: "Australian dollar", symbol: "$"), Currency(code: "TVD[G]", name: "Tuvaluan dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["688"],
  [duration.hours(12)],
)
}

fn country_ug() {
#(
  "Uganda",
  "UG",
  "UGA",
  "800",
  Africa,
  Some("Kampala"),
  [Currency(code: "UGX", name: "Ugandan shilling", symbol: "Sh")],
  [#("English", "en", "English"), #("Swahili", "sw", "Kiswahili")],
  ["256"],
  [duration.hours(3)],
)
}

fn country_ua() {
#(
  "Ukraine",
  "UA",
  "UKR",
  "804",
  Europe,
  Some("Kyiv"),
  [Currency(code: "UAH", name: "Ukrainian hryvnia", symbol: "₴")],
  [#("Ukrainian", "uk", "Українська")],
  ["380"],
  [duration.hours(2)],
)
}

fn country_ae() {
#(
  "United Arab Emirates",
  "AE",
  "ARE",
  "784",
  Asia,
  Some("Abu Dhabi"),
  [Currency(code: "AED", name: "United Arab Emirates dirham", symbol: "د.إ")],
  [#("Arabic", "ar", "العربية")],
  ["971"],
  [duration.hours(4)],
)
}

fn country_gb() {
#(
  "United Kingdom of Great Britain and Northern Ireland",
  "GB",
  "GBR",
  "826",
  Europe,
  Some("London"),
  [Currency(code: "GBP", name: "British pound", symbol: "£")],
  [#("English", "en", "English")],
  ["44"],
  [duration.hours(-8), duration.hours(-5), duration.hours(-4), duration.hours(-3), duration.hours(-2), duration.empty, duration.hours(1), duration.hours(2), duration.hours(6)],
)
}

fn country_um() {
#(
  "United States Minor Outlying Islands",
  "UM",
  "UMI",
  "581",
  Americas,
  None,
  [Currency(code: "GBP", name: "British pound", symbol: "£")],
  [#("English", "en", "English")],
  ["246"],
  [duration.hours(-11), duration.hours(-10), duration.hours(12)],
)
}

fn country_us() {
#(
  "United States of America",
  "US",
  "USA",
  "840",
  Americas,
  Some("Washington, D.C."),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-12), duration.hours(-11), duration.hours(-10), duration.hours(-9), duration.hours(-8), duration.hours(-7), duration.hours(-6), duration.hours(-5), duration.hours(-4), duration.hours(10), duration.hours(12)],
)
}

fn country_uy() {
#(
  "Uruguay",
  "UY",
  "URY",
  "858",
  Americas,
  Some("Montevideo"),
  [Currency(code: "UYU", name: "Uruguayan peso", symbol: "$")],
  [#("Spanish", "es", "Español")],
  ["598"],
  [duration.hours(-3)],
)
}

fn country_uz() {
#(
  "Uzbekistan",
  "UZ",
  "UZB",
  "860",
  Asia,
  Some("Tashkent"),
  [Currency(code: "UZS", name: "Uzbekistani so'm", symbol: "so'm")],
  [#("Uzbek", "uz", "Oʻzbek"), #("Russian", "ru", "Русский")],
  ["998"],
  [duration.hours(5)],
)
}

fn country_vu() {
#(
  "Vanuatu",
  "VU",
  "VUT",
  "548",
  Oceania,
  Some("Port Vila"),
  [Currency(code: "VUV", name: "Vanuatu vatu", symbol: "Vt")],
  [#("Bislama", "bi", "Bislama"), #("English", "en", "English"), #("French", "fr", "français")],
  ["678"],
  [duration.hours(11)],
)
}

fn country_va() {
#(
  "Vatican City",
  "VA",
  "VAT",
  "336",
  Europe,
  Some("Vatican City"),
  [Currency(code: "EUR", name: "Euro", symbol: "€")],
  [#("Latin", "la", "latine"), #("Italian", "it", "Italiano"), #("French", "fr", "Français"), #("German", "de", "Deutsch")],
  ["379"],
  [duration.hours(1)],
)
}

fn country_ve() {
#(
  "Venezuela (Bolivarian Republic of)",
  "VE",
  "VEN",
  "862",
  Americas,
  Some("Caracas"),
  [Currency(code: "VEF", name: "Venezuelan bolívar", symbol: "Bs S")],
  [#("Spanish", "es", "Español")],
  ["58"],
  [duration.hours(-4)],
)
}

fn country_vn() {
#(
  "Vietnam",
  "VN",
  "VNM",
  "704",
  Asia,
  Some("Hanoi"),
  [Currency(code: "VND", name: "Vietnamese đồng", symbol: "₫")],
  [#("Vietnamese", "vi", "Tiếng Việt")],
  ["84"],
  [duration.hours(7)],
)
}

fn country_vg() {
#(
  "Virgin Islands (British)",
  "VG",
  "VGB",
  "092",
  Americas,
  Some("Road Town"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1"],
  [duration.hours(-4)],
)
}

fn country_vi() {
#(
  "Virgin Islands (U.S.)",
  "VI",
  "VIR",
  "850",
  Americas,
  Some("Charlotte Amalie"),
  [Currency(code: "USD", name: "United States dollar", symbol: "$")],
  [#("English", "en", "English")],
  ["1 340"],
  [duration.hours(-4)],
)
}

fn country_wf() {
#(
  "Wallis and Futuna",
  "WF",
  "WLF",
  "876",
  Oceania,
  Some("Mata-Utu"),
  [Currency(code: "XPF", name: "CFP franc", symbol: "Fr")],
  [#("French", "fr", "français")],
  ["681"],
  [duration.hours(12)],
)
}

fn country_eh() {
#(
  "Western Sahara",
  "EH",
  "ESH",
  "732",
  Africa,
  Some("El Aaiún"),
  [Currency(code: "MAD", name: "Moroccan dirham", symbol: "د.م."), Currency(code: "DZD", name: "Algerian dinar", symbol: "د.ج")],
  [#("Spanish", "es", "Español")],
  ["212"],
  [duration.empty],
)
}

fn country_ye() {
#(
  "Yemen",
  "YE",
  "YEM",
  "887",
  Asia,
  Some("Sana'a"),
  [Currency(code: "YER", name: "Yemeni rial", symbol: "﷼")],
  [#("Arabic", "ar", "العربية")],
  ["967"],
  [duration.hours(3)],
)
}

fn country_zm() {
#(
  "Zambia",
  "ZM",
  "ZMB",
  "894",
  Africa,
  Some("Lusaka"),
  [Currency(code: "ZMW", name: "Zambian kwacha", symbol: "ZK")],
  [#("English", "en", "English")],
  ["260"],
  [duration.hours(2)],
)
}

fn country_zw() {
#(
  "Zimbabwe",
  "ZW",
  "ZWE",
  "716",
  Africa,
  Some("Harare"),
  [Currency(code: "ZMW", name: "Zambian kwacha", symbol: "K")],
  [#("English", "en", "English"), #("Shona", "sn", "chiShona"), #("Northern Ndebele", "nd", "isiNdebele")],
  ["263"],
  [duration.hours(2)],
)
}

fn normalize(value: String) -> String {
  value
  |> string.trim()
  |> string.uppercase()
}
