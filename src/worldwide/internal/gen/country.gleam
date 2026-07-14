//// Generated country data.
////
//// Regenerate from [countries.dev](https://countries.dev) with `gleam run -m worldwide/pull_countries`.

// GENERATED FILE - do not edit by hand.
//

import gleam/option.{type Option, None, Some}
import gleam/string
import gleam/time/duration.{type Duration}
import worldwide/currency.{type Currency, Currency}
import worldwide/language.{type Language, Language}
import worldwide/region.{type Region, type Subregion}

@internal
pub type GeneratedCountry {
  GeneratedCountry(
    name: String,
    alpha2: String,
    alpha3: String,
    numeric: String,
    region: Region,
    subregion: Option(Subregion),
    capital: Option(String),
    currencies: List(Currency),
    languages: List(Language),
    calling_codes: List(String),
    timezones: List(Duration),
  )
}

/// Return every known country in [countries.dev](https://countries.dev) name order.
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
  GeneratedCountry(
    "Afghanistan",
    "AF",
    "AFG",
    "004",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Kabul"),
    [
      Currency("AFN", "Afghan afghani", "؋"),
    ],
    [
      Language("Pashto", "ps", "پښتو"),
      Language("Uzbek", "uz", "Oʻzbek"),
      Language("Turkmen", "tk", "Türkmen"),
    ],
    [
      "93",
    ],
    [
      duration.add(duration.hours(4), duration.minutes(30)),
    ],
  )
}

fn country_ax() {
  GeneratedCountry(
    "Åland Islands",
    "AX",
    "ALA",
    "248",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Mariehamn"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Swedish", "sv", "svenska"),
    ],
    [
      "358",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_al() {
  GeneratedCountry(
    "Albania",
    "AL",
    "ALB",
    "008",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Tirana"),
    [
      Currency("ALL", "Albanian lek", "L"),
    ],
    [
      Language("Albanian", "sq", "Shqip"),
    ],
    [
      "355",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_dz() {
  GeneratedCountry(
    "Algeria",
    "DZ",
    "DZA",
    "012",
    region.Africa,
    Some(region.NorthernAfrica),
    Some("Algiers"),
    [
      Currency("DZD", "Algerian dinar", "د.ج"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "213",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_as() {
  GeneratedCountry(
    "American Samoa",
    "AS",
    "ASM",
    "016",
    region.Oceania,
    Some(region.Polynesia),
    Some("Pago Pago"),
    [
      Currency("USD", "United States Dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Samoan", "sm", "gagana fa'a Samoa"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-11),
    ],
  )
}

fn country_ad() {
  GeneratedCountry(
    "Andorra",
    "AD",
    "AND",
    "020",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Andorra la Vella"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Catalan", "ca", "català"),
    ],
    [
      "376",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ao() {
  GeneratedCountry(
    "Angola",
    "AO",
    "AGO",
    "024",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Luanda"),
    [
      Currency("AOA", "Angolan kwanza", "Kz"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "244",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ai() {
  GeneratedCountry(
    "Anguilla",
    "AI",
    "AIA",
    "660",
    region.Americas,
    Some(region.Caribbean),
    Some("The Valley"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_aq() {
  GeneratedCountry(
    "Antarctica",
    "AQ",
    "ATA",
    "010",
    region.Polar,
    Some(region.Antarctica),
    None,
    [],
    [
      Language("English", "en", "English"),
      Language("Russian", "ru", "Русский"),
    ],
    [
      "672",
    ],
    [
      duration.hours(-3),
      duration.hours(3),
      duration.hours(5),
      duration.hours(6),
      duration.hours(7),
      duration.hours(8),
      duration.hours(10),
      duration.hours(12),
    ],
  )
}

fn country_ag() {
  GeneratedCountry(
    "Antigua and Barbuda",
    "AG",
    "ATG",
    "028",
    region.Americas,
    Some(region.Caribbean),
    Some("Saint John's"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_ar() {
  GeneratedCountry(
    "Argentina",
    "AR",
    "ARG",
    "032",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Buenos Aires"),
    [
      Currency("ARS", "Argentine peso", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
      Language("Guaraní", "gn", "Avañe'ẽ"),
    ],
    [
      "54",
    ],
    [
      duration.hours(-3),
    ],
  )
}

fn country_am() {
  GeneratedCountry(
    "Armenia",
    "AM",
    "ARM",
    "051",
    region.Asia,
    Some(region.WesternAsia),
    Some("Yerevan"),
    [
      Currency("AMD", "Armenian dram", "֏"),
    ],
    [
      Language("Armenian", "hy", "Հայերեն"),
    ],
    [
      "374",
    ],
    [
      duration.hours(4),
    ],
  )
}

fn country_aw() {
  GeneratedCountry(
    "Aruba",
    "AW",
    "ABW",
    "533",
    region.Americas,
    Some(region.Caribbean),
    Some("Oranjestad"),
    [
      Currency("AWG", "Aruban florin", "ƒ"),
    ],
    [
      Language("Dutch", "nl", "Nederlands"),
      Language("(Eastern) Punjabi", "pa", "ਪੰਜਾਬੀ"),
    ],
    [
      "297",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_au() {
  GeneratedCountry(
    "Australia",
    "AU",
    "AUS",
    "036",
    region.Oceania,
    Some(region.AustraliaAndNewZealand),
    Some("Canberra"),
    [
      Currency("AUD", "Australian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "61",
    ],
    [
      duration.hours(5),
      duration.add(duration.hours(6), duration.minutes(30)),
      duration.hours(7),
      duration.hours(8),
      duration.add(duration.hours(9), duration.minutes(30)),
      duration.hours(10),
      duration.add(duration.hours(10), duration.minutes(30)),
      duration.add(duration.hours(11), duration.minutes(30)),
    ],
  )
}

fn country_at() {
  GeneratedCountry(
    "Austria",
    "AT",
    "AUT",
    "040",
    region.Europe,
    Some(region.CentralEurope),
    Some("Vienna"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("German", "de", "Deutsch"),
    ],
    [
      "43",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_az() {
  GeneratedCountry(
    "Azerbaijan",
    "AZ",
    "AZE",
    "031",
    region.Asia,
    Some(region.WesternAsia),
    Some("Baku"),
    [
      Currency("AZN", "Azerbaijani manat", "₼"),
    ],
    [
      Language("Azerbaijani", "az", "azərbaycan dili"),
    ],
    [
      "994",
    ],
    [
      duration.hours(4),
    ],
  )
}

fn country_bs() {
  GeneratedCountry(
    "Bahamas",
    "BS",
    "BHS",
    "044",
    region.Americas,
    Some(region.Caribbean),
    Some("Nassau"),
    [
      Currency("BSD", "Bahamian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_bh() {
  GeneratedCountry(
    "Bahrain",
    "BH",
    "BHR",
    "048",
    region.Asia,
    Some(region.WesternAsia),
    Some("Manama"),
    [
      Currency("BHD", "Bahraini dinar", ".د.ب"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "973",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_bd() {
  GeneratedCountry(
    "Bangladesh",
    "BD",
    "BGD",
    "050",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Dhaka"),
    [
      Currency("BDT", "Bangladeshi taka", "৳"),
    ],
    [
      Language("Bengali", "bn", "বাংলা"),
    ],
    [
      "880",
    ],
    [
      duration.hours(6),
    ],
  )
}

fn country_bb() {
  GeneratedCountry(
    "Barbados",
    "BB",
    "BRB",
    "052",
    region.Americas,
    Some(region.Caribbean),
    Some("Bridgetown"),
    [
      Currency("BBD", "Barbadian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_by() {
  GeneratedCountry(
    "Belarus",
    "BY",
    "BLR",
    "112",
    region.Europe,
    Some(region.EasternEurope),
    Some("Minsk"),
    [
      Currency("BYN", "New Belarusian ruble", "Br"),
      Currency("BYR", "Old Belarusian ruble", "Br"),
    ],
    [
      Language("Belarusian", "be", "беларуская мова"),
      Language("Russian", "ru", "Русский"),
    ],
    [
      "375",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_be() {
  GeneratedCountry(
    "Belgium",
    "BE",
    "BEL",
    "056",
    region.Europe,
    Some(region.WesternEurope),
    Some("Brussels"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Dutch", "nl", "Nederlands"),
      Language("French", "fr", "français"),
      Language("German", "de", "Deutsch"),
    ],
    [
      "32",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_bz() {
  GeneratedCountry(
    "Belize",
    "BZ",
    "BLZ",
    "084",
    region.Americas,
    Some(region.CentralAmerica),
    Some("Belmopan"),
    [
      Currency("BZD", "Belize dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Spanish", "es", "Español"),
    ],
    [
      "501",
    ],
    [
      duration.hours(-6),
    ],
  )
}

fn country_bj() {
  GeneratedCountry(
    "Benin",
    "BJ",
    "BEN",
    "204",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Porto-Novo"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "229",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_bm() {
  GeneratedCountry(
    "Bermuda",
    "BM",
    "BMU",
    "060",
    region.Americas,
    Some(region.NorthernAmerica),
    Some("Hamilton"),
    [
      Currency("BMD", "Bermudian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_bt() {
  GeneratedCountry(
    "Bhutan",
    "BT",
    "BTN",
    "064",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Thimphu"),
    [
      Currency("BTN", "Bhutanese ngultrum", "Nu."),
      Currency("INR", "Indian rupee", "₹"),
    ],
    [
      Language("Dzongkha", "dz", "རྫོང་ཁ"),
    ],
    [
      "975",
    ],
    [
      duration.hours(6),
    ],
  )
}

fn country_bo() {
  GeneratedCountry(
    "Bolivia (Plurinational State of)",
    "BO",
    "BOL",
    "068",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Sucre"),
    [
      Currency("BOB", "Bolivian boliviano", "Bs."),
    ],
    [
      Language("Spanish", "es", "Español"),
      Language("Aymara", "ay", "aymar aru"),
      Language("Quechua", "qu", "Runa Simi"),
    ],
    [
      "591",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_bq() {
  GeneratedCountry(
    "Bonaire, Sint Eustatius and Saba",
    "BQ",
    "BES",
    "535",
    region.Americas,
    Some(region.Caribbean),
    Some("Kralendijk"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("Dutch", "nl", "Nederlands"),
    ],
    [
      "599",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_ba() {
  GeneratedCountry(
    "Bosnia and Herzegovina",
    "BA",
    "BIH",
    "070",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Sarajevo"),
    [
      Currency("BAM", "Bosnia and Herzegovina convertible mark", "KM"),
    ],
    [
      Language("Bosnian", "bs", "bosanski jezik"),
      Language("Croatian", "hr", "hrvatski jezik"),
      Language("Serbian", "sr", "српски језик"),
    ],
    [
      "387",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_bw() {
  GeneratedCountry(
    "Botswana",
    "BW",
    "BWA",
    "072",
    region.Africa,
    Some(region.SouthernAfrica),
    Some("Gaborone"),
    [
      Currency("BWP", "Botswana pula", "P"),
    ],
    [
      Language("English", "en", "English"),
      Language("Tswana", "tn", "Setswana"),
    ],
    [
      "267",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_bv() {
  GeneratedCountry(
    "Bouvet Island",
    "BV",
    "BVT",
    "074",
    region.AntarcticOcean,
    Some(region.SouthAntarcticOcean),
    None,
    [
      Currency("NOK", "Norwegian krone", "kr"),
    ],
    [
      Language("Norwegian", "no", "Norsk"),
      Language("Norwegian Bokmål", "nb", "Norsk bokmål"),
      Language("Norwegian Nynorsk", "nn", "Norsk nynorsk"),
    ],
    [
      "47",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_br() {
  GeneratedCountry(
    "Brazil",
    "BR",
    "BRA",
    "076",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Brasília"),
    [
      Currency("BRL", "Brazilian real", "R$"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "55",
    ],
    [
      duration.hours(-5),
      duration.hours(-4),
      duration.hours(-3),
      duration.hours(-2),
    ],
  )
}

fn country_io() {
  GeneratedCountry(
    "British Indian Ocean Territory",
    "IO",
    "IOT",
    "086",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Diego Garcia"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "246",
    ],
    [
      duration.hours(6),
    ],
  )
}

fn country_bn() {
  GeneratedCountry(
    "Brunei Darussalam",
    "BN",
    "BRN",
    "096",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Bandar Seri Begawan"),
    [
      Currency("BND", "Brunei dollar", "$"),
      Currency("SGD", "Singapore dollar", "$"),
    ],
    [
      Language("Malay", "ms", "bahasa Melayu"),
    ],
    [
      "673",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_bg() {
  GeneratedCountry(
    "Bulgaria",
    "BG",
    "BGR",
    "100",
    region.Europe,
    Some(region.EasternEurope),
    Some("Sofia"),
    [
      Currency("BGN", "Bulgarian lev", "лв"),
    ],
    [
      Language("Bulgarian", "bg", "български език"),
    ],
    [
      "359",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_bf() {
  GeneratedCountry(
    "Burkina Faso",
    "BF",
    "BFA",
    "854",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Ouagadougou"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Fula", "ff", "Fulfulde"),
    ],
    [
      "226",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_bi() {
  GeneratedCountry(
    "Burundi",
    "BI",
    "BDI",
    "108",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Gitega"),
    [
      Currency("BIF", "Burundian franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Kirundi", "rn", "Ikirundi"),
    ],
    [
      "257",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_cv() {
  GeneratedCountry(
    "Cabo Verde",
    "CV",
    "CPV",
    "132",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Praia"),
    [
      Currency("CVE", "Cape Verdean escudo", "Esc"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "238",
    ],
    [
      duration.hours(-1),
    ],
  )
}

fn country_kh() {
  GeneratedCountry(
    "Cambodia",
    "KH",
    "KHM",
    "116",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Phnom Penh"),
    [
      Currency("KHR", "Cambodian riel", "៛"),
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("Khmer", "km", "ខ្មែរ"),
    ],
    [
      "855",
    ],
    [
      duration.hours(7),
    ],
  )
}

fn country_cm() {
  GeneratedCountry(
    "Cameroon",
    "CM",
    "CMR",
    "120",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Yaoundé"),
    [
      Currency("XAF", "Central African CFA franc", "Fr"),
    ],
    [
      Language("English", "en", "English"),
      Language("French", "fr", "français"),
    ],
    [
      "237",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ca() {
  GeneratedCountry(
    "Canada",
    "CA",
    "CAN",
    "124",
    region.Americas,
    Some(region.NorthernAmerica),
    Some("Ottawa"),
    [
      Currency("CAD", "Canadian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("French", "fr", "français"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-8),
      duration.hours(-7),
      duration.hours(-6),
      duration.hours(-5),
      duration.hours(-4),
      duration.add(duration.hours(-3), duration.minutes(-30)),
    ],
  )
}

fn country_ky() {
  GeneratedCountry(
    "Cayman Islands",
    "KY",
    "CYM",
    "136",
    region.Americas,
    Some(region.Caribbean),
    Some("George Town"),
    [
      Currency("KYD", "Cayman Islands dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_cf() {
  GeneratedCountry(
    "Central African Republic",
    "CF",
    "CAF",
    "140",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Bangui"),
    [
      Currency("XAF", "Central African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Sango", "sg", "yângâ tî sängö"),
    ],
    [
      "236",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_td() {
  GeneratedCountry(
    "Chad",
    "TD",
    "TCD",
    "148",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("N'Djamena"),
    [
      Currency("XAF", "Central African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "235",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_cl() {
  GeneratedCountry(
    "Chile",
    "CL",
    "CHL",
    "152",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Santiago"),
    [
      Currency("CLP", "Chilean peso", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "56",
    ],
    [
      duration.hours(-6),
      duration.hours(-4),
    ],
  )
}

fn country_cn() {
  GeneratedCountry(
    "China",
    "CN",
    "CHN",
    "156",
    region.Asia,
    Some(region.EasternAsia),
    Some("Beijing"),
    [
      Currency("CNY", "Chinese yuan", "¥"),
    ],
    [
      Language("Chinese", "zh", "中文 (Zhōngwén)"),
    ],
    [
      "86",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_cx() {
  GeneratedCountry(
    "Christmas Island",
    "CX",
    "CXR",
    "162",
    region.Oceania,
    Some(region.AustraliaAndNewZealand),
    Some("Flying Fish Cove"),
    [
      Currency("AUD", "Australian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "61",
    ],
    [
      duration.hours(7),
    ],
  )
}

fn country_cc() {
  GeneratedCountry(
    "Cocos (Keeling) Islands",
    "CC",
    "CCK",
    "166",
    region.Oceania,
    Some(region.AustraliaAndNewZealand),
    Some("West Island"),
    [
      Currency("AUD", "Australian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "61",
    ],
    [
      duration.add(duration.hours(6), duration.minutes(30)),
    ],
  )
}

fn country_co() {
  GeneratedCountry(
    "Colombia",
    "CO",
    "COL",
    "170",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Bogotá"),
    [
      Currency("COP", "Colombian peso", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "57",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_km() {
  GeneratedCountry(
    "Comoros",
    "KM",
    "COM",
    "174",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Moroni"),
    [
      Currency("KMF", "Comorian franc", "Fr"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
      Language("French", "fr", "français"),
    ],
    [
      "269",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_cg() {
  GeneratedCountry(
    "Congo",
    "CG",
    "COG",
    "178",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Brazzaville"),
    [
      Currency("XAF", "Central African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Lingala", "ln", "Lingála"),
    ],
    [
      "242",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_cd() {
  GeneratedCountry(
    "Congo (Democratic Republic of the)",
    "CD",
    "COD",
    "180",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Kinshasa"),
    [
      Currency("CDF", "Congolese franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Lingala", "ln", "Lingála"),
      Language("Kongo", "kg", "Kikongo"),
      Language("Swahili", "sw", "Kiswahili"),
      Language("Luba-Katanga", "lu", "Tshiluba"),
    ],
    [
      "243",
    ],
    [
      duration.hours(1),
      duration.hours(2),
    ],
  )
}

fn country_ck() {
  GeneratedCountry(
    "Cook Islands",
    "CK",
    "COK",
    "184",
    region.Oceania,
    Some(region.Polynesia),
    Some("Avarua"),
    [
      Currency("NZD", "New Zealand dollar", "$"),
      Currency("CKD", "Cook Islands dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Cook Islands Māori", "", "Māori"),
    ],
    [
      "682",
    ],
    [
      duration.hours(-10),
    ],
  )
}

fn country_cr() {
  GeneratedCountry(
    "Costa Rica",
    "CR",
    "CRI",
    "188",
    region.Americas,
    Some(region.CentralAmerica),
    Some("San José"),
    [
      Currency("CRC", "Costa Rican colón", "₡"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "506",
    ],
    [
      duration.hours(-6),
    ],
  )
}

fn country_hr() {
  GeneratedCountry(
    "Croatia",
    "HR",
    "HRV",
    "191",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Zagreb"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Croatian", "hr", "hrvatski jezik"),
    ],
    [
      "385",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_cu() {
  GeneratedCountry(
    "Cuba",
    "CU",
    "CUB",
    "192",
    region.Americas,
    Some(region.Caribbean),
    Some("Havana"),
    [
      Currency("CUC", "Cuban convertible peso", "$"),
      Currency("CUP", "Cuban peso", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "53",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_cw() {
  GeneratedCountry(
    "Curaçao",
    "CW",
    "CUW",
    "531",
    region.Americas,
    Some(region.Caribbean),
    Some("Willemstad"),
    [
      Currency("ANG", "Netherlands Antillean guilder", "ƒ"),
    ],
    [
      Language("Dutch", "nl", "Nederlands"),
      Language("(Eastern) Punjabi", "pa", "ਪੰਜਾਬੀ"),
      Language("English", "en", "English"),
    ],
    [
      "599",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_cy() {
  GeneratedCountry(
    "Cyprus",
    "CY",
    "CYP",
    "196",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Nicosia"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Greek (modern)", "el", "ελληνικά"),
      Language("Turkish", "tr", "Türkçe"),
      Language("Armenian", "hy", "Հայերեն"),
    ],
    [
      "357",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_cz() {
  GeneratedCountry(
    "Czech Republic",
    "CZ",
    "CZE",
    "203",
    region.Europe,
    Some(region.CentralEurope),
    Some("Prague"),
    [
      Currency("CZK", "Czech koruna", "Kč"),
    ],
    [
      Language("Czech", "cs", "čeština"),
      Language("Slovak", "sk", "slovenčina"),
    ],
    [
      "420",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_dk() {
  GeneratedCountry(
    "Denmark",
    "DK",
    "DNK",
    "208",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Copenhagen"),
    [
      Currency("DKK", "Danish krone", "kr"),
    ],
    [
      Language("Danish", "da", "dansk"),
    ],
    [
      "45",
    ],
    [
      duration.hours(-4),
      duration.hours(-3),
      duration.hours(-1),
      duration.empty,
      duration.hours(1),
    ],
  )
}

fn country_dj() {
  GeneratedCountry(
    "Djibouti",
    "DJ",
    "DJI",
    "262",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Djibouti"),
    [
      Currency("DJF", "Djiboutian franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "253",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_dm() {
  GeneratedCountry(
    "Dominica",
    "DM",
    "DMA",
    "212",
    region.Americas,
    Some(region.Caribbean),
    Some("Roseau"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_do() {
  GeneratedCountry(
    "Dominican Republic",
    "DO",
    "DOM",
    "214",
    region.Americas,
    Some(region.Caribbean),
    Some("Santo Domingo"),
    [
      Currency("DOP", "Dominican peso", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_ec() {
  GeneratedCountry(
    "Ecuador",
    "EC",
    "ECU",
    "218",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Quito"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "593",
    ],
    [
      duration.hours(-6),
      duration.hours(-5),
    ],
  )
}

fn country_eg() {
  GeneratedCountry(
    "Egypt",
    "EG",
    "EGY",
    "818",
    region.Africa,
    Some(region.NorthernAfrica),
    Some("Cairo"),
    [
      Currency("EGP", "Egyptian pound", "£"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "20",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_sv() {
  GeneratedCountry(
    "El Salvador",
    "SV",
    "SLV",
    "222",
    region.Americas,
    Some(region.CentralAmerica),
    Some("San Salvador"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "503",
    ],
    [
      duration.hours(-6),
    ],
  )
}

fn country_gq() {
  GeneratedCountry(
    "Equatorial Guinea",
    "GQ",
    "GNQ",
    "226",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Malabo"),
    [
      Currency("XAF", "Central African CFA franc", "Fr"),
    ],
    [
      Language("Spanish", "es", "Español"),
      Language("French", "fr", "français"),
      Language("Portuguese", "pt", "Português"),
      Language("Fang", "", "Fang"),
    ],
    [
      "240",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_er() {
  GeneratedCountry(
    "Eritrea",
    "ER",
    "ERI",
    "232",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Asmara"),
    [
      Currency("ERN", "Eritrean nakfa", "Nfk"),
    ],
    [
      Language("Tigrinya", "ti", "ትግርኛ"),
      Language("Arabic", "ar", "العربية"),
      Language("English", "en", "English"),
      Language("Tigre", "", "ትግረ"),
      Language("Kunama", "", "Kunama"),
      Language("Saho", "", "Saho"),
      Language("Bilen", "", "ብሊና"),
      Language("Nara", "", "Nara"),
      Language("Afar", "aa", "Afar"),
    ],
    [
      "291",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_ee() {
  GeneratedCountry(
    "Estonia",
    "EE",
    "EST",
    "233",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Tallinn"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Estonian", "et", "eesti"),
    ],
    [
      "372",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_et() {
  GeneratedCountry(
    "Ethiopia",
    "ET",
    "ETH",
    "231",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Addis Ababa"),
    [
      Currency("ETB", "Ethiopian birr", "Br"),
    ],
    [
      Language("Amharic", "am", "አማርኛ"),
    ],
    [
      "251",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_fk() {
  GeneratedCountry(
    "Falkland Islands (Malvinas)",
    "FK",
    "FLK",
    "238",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Stanley"),
    [
      Currency("FKP", "Falkland Islands pound", "£"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "500",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_fo() {
  GeneratedCountry(
    "Faroe Islands",
    "FO",
    "FRO",
    "234",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Tórshavn"),
    [
      Currency("DKK", "Danish krone", "kr"),
      Currency("FOK", "Faroese króna", "kr"),
    ],
    [
      Language("Faroese", "fo", "føroyskt"),
    ],
    [
      "298",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_fj() {
  GeneratedCountry(
    "Fiji",
    "FJ",
    "FJI",
    "242",
    region.Oceania,
    Some(region.Melanesia),
    Some("Suva"),
    [
      Currency("FJD", "Fijian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Fijian", "fj", "vosa Vakaviti"),
      Language("Fiji Hindi", "", "फ़िजी बात"),
      Language("Rotuman", "", "Fäeag Rotuma"),
    ],
    [
      "679",
    ],
    [
      duration.hours(12),
    ],
  )
}

fn country_fi() {
  GeneratedCountry(
    "Finland",
    "FI",
    "FIN",
    "246",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Helsinki"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Finnish", "fi", "suomi"),
      Language("Swedish", "sv", "svenska"),
    ],
    [
      "358",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_fr() {
  GeneratedCountry(
    "France",
    "FR",
    "FRA",
    "250",
    region.Europe,
    Some(region.WesternEurope),
    Some("Paris"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "33",
    ],
    [
      duration.hours(-10),
      duration.add(duration.hours(-9), duration.minutes(-30)),
      duration.hours(-9),
      duration.hours(-8),
      duration.hours(-4),
      duration.hours(-3),
      duration.hours(1),
      duration.hours(2),
      duration.hours(3),
      duration.hours(4),
      duration.hours(5),
      duration.hours(10),
      duration.hours(11),
      duration.hours(12),
    ],
  )
}

fn country_gf() {
  GeneratedCountry(
    "French Guiana",
    "GF",
    "GUF",
    "254",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Cayenne"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "594",
    ],
    [
      duration.hours(-3),
    ],
  )
}

fn country_pf() {
  GeneratedCountry(
    "French Polynesia",
    "PF",
    "PYF",
    "258",
    region.Oceania,
    Some(region.Polynesia),
    Some("Papeetē"),
    [
      Currency("XPF", "CFP franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "689",
    ],
    [
      duration.hours(-10),
      duration.add(duration.hours(-9), duration.minutes(-30)),
      duration.hours(-9),
    ],
  )
}

fn country_tf() {
  GeneratedCountry(
    "French Southern Territories",
    "TF",
    "ATF",
    "260",
    region.Africa,
    Some(region.SouthernAfrica),
    Some("Port-aux-Français"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "262",
    ],
    [
      duration.hours(5),
    ],
  )
}

fn country_ga() {
  GeneratedCountry(
    "Gabon",
    "GA",
    "GAB",
    "266",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Libreville"),
    [
      Currency("XAF", "Central African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "241",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_gm() {
  GeneratedCountry(
    "Gambia",
    "GM",
    "GMB",
    "270",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Banjul"),
    [
      Currency("GMD", "Gambian dalasi", "D"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "220",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_ge() {
  GeneratedCountry(
    "Georgia",
    "GE",
    "GEO",
    "268",
    region.Asia,
    Some(region.WesternAsia),
    Some("Tbilisi"),
    [
      Currency("GEL", "Georgian Lari", "ლ"),
    ],
    [
      Language("Georgian", "ka", "ქართული"),
    ],
    [
      "995",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_de() {
  GeneratedCountry(
    "Germany",
    "DE",
    "DEU",
    "276",
    region.Europe,
    Some(region.CentralEurope),
    Some("Berlin"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("German", "de", "Deutsch"),
    ],
    [
      "49",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_gh() {
  GeneratedCountry(
    "Ghana",
    "GH",
    "GHA",
    "288",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Accra"),
    [
      Currency("GHS", "Ghanaian cedi", "₵"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "233",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_gi() {
  GeneratedCountry(
    "Gibraltar",
    "GI",
    "GIB",
    "292",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Gibraltar"),
    [
      Currency("GIP", "Gibraltar pound", "£"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "350",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_gr() {
  GeneratedCountry(
    "Greece",
    "GR",
    "GRC",
    "300",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Athens"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Greek (modern)", "el", "ελληνικά"),
    ],
    [
      "30",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_gl() {
  GeneratedCountry(
    "Greenland",
    "GL",
    "GRL",
    "304",
    region.Americas,
    Some(region.NorthernAmerica),
    Some("Nuuk"),
    [
      Currency("DKK", "Danish krone", "kr"),
    ],
    [
      Language("Kalaallisut", "kl", "kalaallisut"),
    ],
    [
      "299",
    ],
    [
      duration.hours(-4),
      duration.hours(-3),
      duration.hours(-1),
      duration.empty,
    ],
  )
}

fn country_gd() {
  GeneratedCountry(
    "Grenada",
    "GD",
    "GRD",
    "308",
    region.Americas,
    Some(region.Caribbean),
    Some("St. George's"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_gp() {
  GeneratedCountry(
    "Guadeloupe",
    "GP",
    "GLP",
    "312",
    region.Americas,
    Some(region.Caribbean),
    Some("Basse-Terre"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "590",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_gu() {
  GeneratedCountry(
    "Guam",
    "GU",
    "GUM",
    "316",
    region.Oceania,
    Some(region.Micronesia),
    Some("Hagåtña"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Chamorro", "ch", "Chamoru"),
      Language("Spanish", "es", "Español"),
    ],
    [
      "1",
    ],
    [
      duration.hours(10),
    ],
  )
}

fn country_gt() {
  GeneratedCountry(
    "Guatemala",
    "GT",
    "GTM",
    "320",
    region.Americas,
    Some(region.CentralAmerica),
    Some("Guatemala City"),
    [
      Currency("GTQ", "Guatemalan quetzal", "Q"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "502",
    ],
    [
      duration.hours(-6),
    ],
  )
}

fn country_gg() {
  GeneratedCountry(
    "Guernsey",
    "GG",
    "GGY",
    "831",
    region.Europe,
    Some(region.NorthernEurope),
    Some("St. Peter Port"),
    [
      Currency("GBP", "British pound", "£"),
      Currency("GGP", "Guernsey pound", "£"),
    ],
    [
      Language("English", "en", "English"),
      Language("French", "fr", "français"),
    ],
    [
      "44",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_gn() {
  GeneratedCountry(
    "Guinea",
    "GN",
    "GIN",
    "324",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Conakry"),
    [
      Currency("GNF", "Guinean franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Fula", "ff", "Fulfulde"),
    ],
    [
      "224",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_gw() {
  GeneratedCountry(
    "Guinea-Bissau",
    "GW",
    "GNB",
    "624",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Bissau"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "245",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_gy() {
  GeneratedCountry(
    "Guyana",
    "GY",
    "GUY",
    "328",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Georgetown"),
    [
      Currency("GYD", "Guyanese dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "592",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_ht() {
  GeneratedCountry(
    "Haiti",
    "HT",
    "HTI",
    "332",
    region.Americas,
    Some(region.Caribbean),
    Some("Port-au-Prince"),
    [
      Currency("HTG", "Haitian gourde", "G"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Haitian", "ht", "Kreyòl ayisyen"),
    ],
    [
      "509",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_hm() {
  GeneratedCountry(
    "Heard Island and McDonald Islands",
    "HM",
    "HMD",
    "334",
    region.Antarctic,
    None,
    None,
    [
      Currency("AUD", "Australian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "672",
    ],
    [
      duration.hours(5),
    ],
  )
}

fn country_hn() {
  GeneratedCountry(
    "Honduras",
    "HN",
    "HND",
    "340",
    region.Americas,
    Some(region.CentralAmerica),
    Some("Tegucigalpa"),
    [
      Currency("HNL", "Honduran lempira", "L"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "504",
    ],
    [
      duration.hours(-6),
    ],
  )
}

fn country_hk() {
  GeneratedCountry(
    "Hong Kong",
    "HK",
    "HKG",
    "344",
    region.Asia,
    Some(region.EasternAsia),
    Some("City of Victoria"),
    [
      Currency("HKD", "Hong Kong dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Chinese", "zh", "中文 (Zhōngwén)"),
    ],
    [
      "852",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_hu() {
  GeneratedCountry(
    "Hungary",
    "HU",
    "HUN",
    "348",
    region.Europe,
    Some(region.CentralEurope),
    Some("Budapest"),
    [
      Currency("HUF", "Hungarian forint", "Ft"),
    ],
    [
      Language("Hungarian", "hu", "magyar"),
    ],
    [
      "36",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_is() {
  GeneratedCountry(
    "Iceland",
    "IS",
    "ISL",
    "352",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Reykjavík"),
    [
      Currency("ISK", "Icelandic króna", "kr"),
    ],
    [
      Language("Icelandic", "is", "Íslenska"),
    ],
    [
      "354",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_in() {
  GeneratedCountry(
    "India",
    "IN",
    "IND",
    "356",
    region.Asia,
    Some(region.SouthernAsia),
    Some("New Delhi"),
    [
      Currency("INR", "Indian rupee", "₹"),
    ],
    [
      Language("Hindi", "hi", "हिन्दी"),
      Language("English", "en", "English"),
    ],
    [
      "91",
    ],
    [
      duration.add(duration.hours(5), duration.minutes(30)),
    ],
  )
}

fn country_id() {
  GeneratedCountry(
    "Indonesia",
    "ID",
    "IDN",
    "360",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Jakarta"),
    [
      Currency("IDR", "Indonesian rupiah", "Rp"),
    ],
    [
      Language("Indonesian", "id", "Bahasa Indonesia"),
    ],
    [
      "62",
    ],
    [
      duration.hours(7),
      duration.hours(8),
      duration.hours(9),
    ],
  )
}

fn country_ir() {
  GeneratedCountry(
    "Iran (Islamic Republic of)",
    "IR",
    "IRN",
    "364",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Tehran"),
    [
      Currency("IRR", "Iranian rial", "﷼"),
    ],
    [
      Language("Persian (Farsi)", "fa", "فارسی"),
    ],
    [
      "98",
    ],
    [
      duration.add(duration.hours(3), duration.minutes(30)),
    ],
  )
}

fn country_iq() {
  GeneratedCountry(
    "Iraq",
    "IQ",
    "IRQ",
    "368",
    region.Asia,
    Some(region.WesternAsia),
    Some("Baghdad"),
    [
      Currency("IQD", "Iraqi dinar", "ع.د"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
      Language("Kurdish", "ku", "Kurdî"),
    ],
    [
      "964",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_ie() {
  GeneratedCountry(
    "Ireland",
    "IE",
    "IRL",
    "372",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Dublin"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Irish", "ga", "Gaeilge"),
      Language("English", "en", "English"),
    ],
    [
      "353",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_im() {
  GeneratedCountry(
    "Isle of Man",
    "IM",
    "IMN",
    "833",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Douglas"),
    [
      Currency("GBP", "British pound", "£"),
      Currency("IMP[G]", "Manx pound", "£"),
    ],
    [
      Language("English", "en", "English"),
      Language("Manx", "gv", "Gaelg"),
    ],
    [
      "44",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_il() {
  GeneratedCountry(
    "Israel",
    "IL",
    "ISR",
    "376",
    region.Asia,
    Some(region.WesternAsia),
    Some("Jerusalem"),
    [
      Currency("ILS", "Israeli new shekel", "₪"),
    ],
    [
      Language("Hebrew (modern)", "he", "עברית"),
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "972",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_it() {
  GeneratedCountry(
    "Italy",
    "IT",
    "ITA",
    "380",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Rome"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Italian", "it", "Italiano"),
    ],
    [
      "39",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ci() {
  GeneratedCountry(
    "Ivory Coast",
    "CI",
    "CIV",
    "384",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Yamoussoukro"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "225",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_jm() {
  GeneratedCountry(
    "Jamaica",
    "JM",
    "JAM",
    "388",
    region.Americas,
    Some(region.Caribbean),
    Some("Kingston"),
    [
      Currency("JMD", "Jamaican dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_jp() {
  GeneratedCountry(
    "Japan",
    "JP",
    "JPN",
    "392",
    region.Asia,
    Some(region.EasternAsia),
    Some("Tokyo"),
    [
      Currency("JPY", "Japanese yen", "¥"),
    ],
    [
      Language("Japanese", "ja", "日本語 (にほんご)"),
    ],
    [
      "81",
    ],
    [
      duration.hours(9),
    ],
  )
}

fn country_je() {
  GeneratedCountry(
    "Jersey",
    "JE",
    "JEY",
    "832",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Saint Helier"),
    [
      Currency("GBP", "British pound", "£"),
      Currency("JEP[G]", "Jersey pound", "£"),
    ],
    [
      Language("English", "en", "English"),
      Language("French", "fr", "français"),
    ],
    [
      "44",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_jo() {
  GeneratedCountry(
    "Jordan",
    "JO",
    "JOR",
    "400",
    region.Asia,
    Some(region.WesternAsia),
    Some("Amman"),
    [
      Currency("JOD", "Jordanian dinar", "د.ا"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "962",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_kz() {
  GeneratedCountry(
    "Kazakhstan",
    "KZ",
    "KAZ",
    "398",
    region.Asia,
    Some(region.CentralAsia),
    Some("Nur-Sultan"),
    [
      Currency("KZT", "Kazakhstani tenge", "₸"),
    ],
    [
      Language("Kazakh", "kk", "қазақ тілі"),
      Language("Russian", "ru", "Русский"),
    ],
    [
      "76",
      "77",
    ],
    [
      duration.hours(5),
      duration.hours(6),
    ],
  )
}

fn country_ke() {
  GeneratedCountry(
    "Kenya",
    "KE",
    "KEN",
    "404",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Nairobi"),
    [
      Currency("KES", "Kenyan shilling", "Sh"),
    ],
    [
      Language("English", "en", "English"),
      Language("Swahili", "sw", "Kiswahili"),
    ],
    [
      "254",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_ki() {
  GeneratedCountry(
    "Kiribati",
    "KI",
    "KIR",
    "296",
    region.Oceania,
    Some(region.Micronesia),
    Some("South Tarawa"),
    [
      Currency("AUD", "Australian dollar", "$"),
      Currency("KID", "Kiribati dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "686",
    ],
    [
      duration.hours(12),
      duration.hours(13),
      duration.hours(14),
    ],
  )
}

fn country_kp() {
  GeneratedCountry(
    "Korea (Democratic People's Republic of)",
    "KP",
    "PRK",
    "408",
    region.Asia,
    Some(region.EasternAsia),
    Some("Pyongyang"),
    [
      Currency("KPW", "North Korean won", "₩"),
    ],
    [
      Language("Korean", "ko", "한국어"),
    ],
    [
      "850",
    ],
    [
      duration.hours(9),
    ],
  )
}

fn country_kr() {
  GeneratedCountry(
    "Korea (Republic of)",
    "KR",
    "KOR",
    "410",
    region.Asia,
    Some(region.EasternAsia),
    Some("Seoul"),
    [
      Currency("KRW", "South Korean won", "₩"),
    ],
    [
      Language("Korean", "ko", "한국어"),
    ],
    [
      "82",
    ],
    [
      duration.hours(9),
    ],
  )
}

fn country_kw() {
  GeneratedCountry(
    "Kuwait",
    "KW",
    "KWT",
    "414",
    region.Asia,
    Some(region.WesternAsia),
    Some("Kuwait City"),
    [
      Currency("KWD", "Kuwaiti dinar", "د.ك"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "965",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_kg() {
  GeneratedCountry(
    "Kyrgyzstan",
    "KG",
    "KGZ",
    "417",
    region.Asia,
    Some(region.CentralAsia),
    Some("Bishkek"),
    [
      Currency("KGS", "Kyrgyzstani som", "с"),
    ],
    [
      Language("Kyrgyz", "ky", "Кыргызча"),
      Language("Russian", "ru", "Русский"),
    ],
    [
      "996",
    ],
    [
      duration.hours(6),
    ],
  )
}

fn country_la() {
  GeneratedCountry(
    "Lao People's Democratic Republic",
    "LA",
    "LAO",
    "418",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Vientiane"),
    [
      Currency("LAK", "Lao kip", "₭"),
    ],
    [
      Language("Lao", "lo", "ພາສາລາວ"),
    ],
    [
      "856",
    ],
    [
      duration.hours(7),
    ],
  )
}

fn country_lv() {
  GeneratedCountry(
    "Latvia",
    "LV",
    "LVA",
    "428",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Riga"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Latvian", "lv", "latviešu valoda"),
    ],
    [
      "371",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_lb() {
  GeneratedCountry(
    "Lebanon",
    "LB",
    "LBN",
    "422",
    region.Asia,
    Some(region.WesternAsia),
    Some("Beirut"),
    [
      Currency("LBP", "Lebanese pound", "ل.ل"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
      Language("French", "fr", "français"),
    ],
    [
      "961",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_ls() {
  GeneratedCountry(
    "Lesotho",
    "LS",
    "LSO",
    "426",
    region.Africa,
    Some(region.SouthernAfrica),
    Some("Maseru"),
    [
      Currency("LSL", "Lesotho loti", "L"),
      Currency("ZAR", "South African rand", "R"),
    ],
    [
      Language("English", "en", "English"),
      Language("Southern Sotho", "st", "Sesotho"),
    ],
    [
      "266",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_lr() {
  GeneratedCountry(
    "Liberia",
    "LR",
    "LBR",
    "430",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Monrovia"),
    [
      Currency("LRD", "Liberian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "231",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_ly() {
  GeneratedCountry(
    "Libya",
    "LY",
    "LBY",
    "434",
    region.Africa,
    Some(region.NorthernAfrica),
    Some("Tripoli"),
    [
      Currency("LYD", "Libyan dinar", "ل.د"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "218",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_li() {
  GeneratedCountry(
    "Liechtenstein",
    "LI",
    "LIE",
    "438",
    region.Europe,
    Some(region.CentralEurope),
    Some("Vaduz"),
    [
      Currency("CHF", "Swiss franc", "Fr"),
    ],
    [
      Language("German", "de", "Deutsch"),
    ],
    [
      "423",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_lt() {
  GeneratedCountry(
    "Lithuania",
    "LT",
    "LTU",
    "440",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Vilnius"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Lithuanian", "lt", "lietuvių kalba"),
    ],
    [
      "370",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_lu() {
  GeneratedCountry(
    "Luxembourg",
    "LU",
    "LUX",
    "442",
    region.Europe,
    Some(region.WesternEurope),
    Some("Luxembourg"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
      Language("German", "de", "Deutsch"),
      Language("Luxembourgish", "lb", "Lëtzebuergesch"),
    ],
    [
      "352",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_mo() {
  GeneratedCountry(
    "Macao",
    "MO",
    "MAC",
    "446",
    region.Asia,
    Some(region.EasternAsia),
    None,
    [
      Currency("MOP", "Macanese pataca", "P"),
    ],
    [
      Language("Chinese", "zh", "中文 (Zhōngwén)"),
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "853",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_mg() {
  GeneratedCountry(
    "Madagascar",
    "MG",
    "MDG",
    "450",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Antananarivo"),
    [
      Currency("MGA", "Malagasy ariary", "Ar"),
    ],
    [
      Language("French", "fr", "français"),
      Language("Malagasy", "mg", "fiteny malagasy"),
    ],
    [
      "261",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_mw() {
  GeneratedCountry(
    "Malawi",
    "MW",
    "MWI",
    "454",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Lilongwe"),
    [
      Currency("MWK", "Malawian kwacha", "MK"),
    ],
    [
      Language("English", "en", "English"),
      Language("Chichewa", "ny", "chiCheŵa"),
    ],
    [
      "265",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_my() {
  GeneratedCountry(
    "Malaysia",
    "MY",
    "MYS",
    "458",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Kuala Lumpur"),
    [
      Currency("MYR", "Malaysian ringgit", "RM"),
    ],
    [
      Language("Malaysian", "ms", "بهاس مليسيا"),
    ],
    [
      "60",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_mv() {
  GeneratedCountry(
    "Maldives",
    "MV",
    "MDV",
    "462",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Malé"),
    [
      Currency("MVR", "Maldivian rufiyaa", ".ރ"),
    ],
    [
      Language("Divehi", "dv", "ދިވެހި"),
    ],
    [
      "960",
    ],
    [
      duration.hours(5),
    ],
  )
}

fn country_ml() {
  GeneratedCountry(
    "Mali",
    "ML",
    "MLI",
    "466",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Bamako"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "223",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_mt() {
  GeneratedCountry(
    "Malta",
    "MT",
    "MLT",
    "470",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Valletta"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Maltese", "mt", "Malti"),
      Language("English", "en", "English"),
    ],
    [
      "356",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_mh() {
  GeneratedCountry(
    "Marshall Islands",
    "MH",
    "MHL",
    "584",
    region.Oceania,
    Some(region.Micronesia),
    Some("Majuro"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Marshallese", "mh", "Kajin M̧ajeļ"),
    ],
    [
      "692",
    ],
    [
      duration.hours(12),
    ],
  )
}

fn country_mq() {
  GeneratedCountry(
    "Martinique",
    "MQ",
    "MTQ",
    "474",
    region.Americas,
    Some(region.Caribbean),
    Some("Fort-de-France"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "596",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_mr() {
  GeneratedCountry(
    "Mauritania",
    "MR",
    "MRT",
    "478",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Nouakchott"),
    [
      Currency("MRO", "Mauritanian ouguiya", "UM"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "222",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_mu() {
  GeneratedCountry(
    "Mauritius",
    "MU",
    "MUS",
    "480",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Port Louis"),
    [
      Currency("MUR", "Mauritian rupee", "₨"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "230",
    ],
    [
      duration.hours(4),
    ],
  )
}

fn country_yt() {
  GeneratedCountry(
    "Mayotte",
    "YT",
    "MYT",
    "175",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Mamoudzou"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "262",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_mx() {
  GeneratedCountry(
    "Mexico",
    "MX",
    "MEX",
    "484",
    region.Americas,
    Some(region.NorthAmerica),
    Some("Mexico City"),
    [
      Currency("MXN", "Mexican peso", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "52",
    ],
    [
      duration.hours(-8),
      duration.hours(-7),
      duration.hours(-6),
    ],
  )
}

fn country_fm() {
  GeneratedCountry(
    "Micronesia (Federated States of)",
    "FM",
    "FSM",
    "583",
    region.Oceania,
    Some(region.Micronesia),
    Some("Palikir"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "691",
    ],
    [
      duration.hours(10),
      duration.hours(11),
    ],
  )
}

fn country_md() {
  GeneratedCountry(
    "Moldova (Republic of)",
    "MD",
    "MDA",
    "498",
    region.Europe,
    Some(region.EasternEurope),
    Some("Chișinău"),
    [
      Currency("MDL", "Moldovan leu", "L"),
    ],
    [
      Language("Romanian", "ro", "Română"),
    ],
    [
      "373",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_mc() {
  GeneratedCountry(
    "Monaco",
    "MC",
    "MCO",
    "492",
    region.Europe,
    Some(region.WesternEurope),
    Some("Monaco"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "377",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_mn() {
  GeneratedCountry(
    "Mongolia",
    "MN",
    "MNG",
    "496",
    region.Asia,
    Some(region.EasternAsia),
    Some("Ulan Bator"),
    [
      Currency("MNT", "Mongolian tögrög", "₮"),
    ],
    [
      Language("Mongolian", "mn", "Монгол хэл"),
    ],
    [
      "976",
    ],
    [
      duration.hours(7),
      duration.hours(8),
    ],
  )
}

fn country_me() {
  GeneratedCountry(
    "Montenegro",
    "ME",
    "MNE",
    "499",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Podgorica"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Serbian", "sr", "српски језик"),
      Language("Bosnian", "bs", "bosanski jezik"),
      Language("Albanian", "sq", "Shqip"),
      Language("Croatian", "hr", "hrvatski jezik"),
    ],
    [
      "382",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ms() {
  GeneratedCountry(
    "Montserrat",
    "MS",
    "MSR",
    "500",
    region.Americas,
    Some(region.Caribbean),
    Some("Plymouth"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_ma() {
  GeneratedCountry(
    "Morocco",
    "MA",
    "MAR",
    "504",
    region.Africa,
    Some(region.NorthernAfrica),
    Some("Rabat"),
    [
      Currency("MAD", "Moroccan dirham", "د.م."),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "212",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_mz() {
  GeneratedCountry(
    "Mozambique",
    "MZ",
    "MOZ",
    "508",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Maputo"),
    [
      Currency("MZN", "Mozambican metical", "MT"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "258",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_mm() {
  GeneratedCountry(
    "Myanmar",
    "MM",
    "MMR",
    "104",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Naypyidaw"),
    [
      Currency("MMK", "Burmese kyat", "Ks"),
    ],
    [
      Language("Burmese", "my", "ဗမာစာ"),
    ],
    [
      "95",
    ],
    [
      duration.add(duration.hours(6), duration.minutes(30)),
    ],
  )
}

fn country_na() {
  GeneratedCountry(
    "Namibia",
    "NA",
    "NAM",
    "516",
    region.Africa,
    Some(region.SouthernAfrica),
    Some("Windhoek"),
    [
      Currency("NAD", "Namibian dollar", "$"),
      Currency("ZAR", "South African rand", "R"),
    ],
    [
      Language("English", "en", "English"),
      Language("Afrikaans", "af", "Afrikaans"),
    ],
    [
      "264",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_nr() {
  GeneratedCountry(
    "Nauru",
    "NR",
    "NRU",
    "520",
    region.Oceania,
    Some(region.Micronesia),
    Some("Yaren"),
    [
      Currency("AUD", "Australian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Nauruan", "na", "Dorerin Naoero"),
    ],
    [
      "674",
    ],
    [
      duration.hours(12),
    ],
  )
}

fn country_np() {
  GeneratedCountry(
    "Nepal",
    "NP",
    "NPL",
    "524",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Kathmandu"),
    [
      Currency("NPR", "Nepalese rupee", "₨"),
    ],
    [
      Language("Nepali", "ne", "नेपाली"),
    ],
    [
      "977",
    ],
    [
      duration.add(duration.hours(5), duration.minutes(45)),
    ],
  )
}

fn country_nl() {
  GeneratedCountry(
    "Netherlands",
    "NL",
    "NLD",
    "528",
    region.Europe,
    Some(region.WesternEurope),
    Some("Amsterdam"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Dutch", "nl", "Nederlands"),
    ],
    [
      "31",
    ],
    [
      duration.hours(-4),
      duration.hours(1),
    ],
  )
}

fn country_nc() {
  GeneratedCountry(
    "New Caledonia",
    "NC",
    "NCL",
    "540",
    region.Oceania,
    Some(region.Melanesia),
    Some("Nouméa"),
    [
      Currency("XPF", "CFP franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "687",
    ],
    [
      duration.hours(11),
    ],
  )
}

fn country_nz() {
  GeneratedCountry(
    "New Zealand",
    "NZ",
    "NZL",
    "554",
    region.Oceania,
    Some(region.AustraliaAndNewZealand),
    Some("Wellington"),
    [
      Currency("NZD", "New Zealand dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Māori", "mi", "te reo Māori"),
    ],
    [
      "64",
    ],
    [
      duration.hours(-11),
      duration.hours(-10),
      duration.hours(12),
      duration.add(duration.hours(12), duration.minutes(45)),
      duration.hours(13),
    ],
  )
}

fn country_ni() {
  GeneratedCountry(
    "Nicaragua",
    "NI",
    "NIC",
    "558",
    region.Americas,
    Some(region.CentralAmerica),
    Some("Managua"),
    [
      Currency("NIO", "Nicaraguan córdoba", "C$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "505",
    ],
    [
      duration.hours(-6),
    ],
  )
}

fn country_ne() {
  GeneratedCountry(
    "Niger",
    "NE",
    "NER",
    "562",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Niamey"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "227",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ng() {
  GeneratedCountry(
    "Nigeria",
    "NG",
    "NGA",
    "566",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Abuja"),
    [
      Currency("NGN", "Nigerian naira", "₦"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "234",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_nu() {
  GeneratedCountry(
    "Niue",
    "NU",
    "NIU",
    "570",
    region.Oceania,
    Some(region.Polynesia),
    Some("Alofi"),
    [
      Currency("NZD", "New Zealand dollar", "$"),
      Currency("NZD", "Niue dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "683",
    ],
    [
      duration.hours(-11),
    ],
  )
}

fn country_nf() {
  GeneratedCountry(
    "Norfolk Island",
    "NF",
    "NFK",
    "574",
    region.Oceania,
    Some(region.AustraliaAndNewZealand),
    Some("Kingston"),
    [
      Currency("AUD", "Australian dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "672",
    ],
    [
      duration.add(duration.hours(11), duration.minutes(30)),
    ],
  )
}

fn country_mk() {
  GeneratedCountry(
    "North Macedonia",
    "MK",
    "MKD",
    "807",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Skopje"),
    [
      Currency("MKD", "Macedonian denar", "ден"),
    ],
    [
      Language("Macedonian", "mk", "македонски јазик"),
    ],
    [
      "389",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_mp() {
  GeneratedCountry(
    "Northern Mariana Islands",
    "MP",
    "MNP",
    "580",
    region.Oceania,
    Some(region.Micronesia),
    Some("Saipan"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Chamorro", "ch", "Chamoru"),
    ],
    [
      "1",
    ],
    [
      duration.hours(10),
    ],
  )
}

fn country_no() {
  GeneratedCountry(
    "Norway",
    "NO",
    "NOR",
    "578",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Oslo"),
    [
      Currency("NOK", "Norwegian krone", "kr"),
    ],
    [
      Language("Norwegian", "no", "Norsk"),
      Language("Norwegian Bokmål", "nb", "Norsk bokmål"),
      Language("Norwegian Nynorsk", "nn", "Norsk nynorsk"),
    ],
    [
      "47",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_om() {
  GeneratedCountry(
    "Oman",
    "OM",
    "OMN",
    "512",
    region.Asia,
    Some(region.WesternAsia),
    Some("Muscat"),
    [
      Currency("OMR", "Omani rial", "ر.ع."),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "968",
    ],
    [
      duration.hours(4),
    ],
  )
}

fn country_pk() {
  GeneratedCountry(
    "Pakistan",
    "PK",
    "PAK",
    "586",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Islamabad"),
    [
      Currency("PKR", "Pakistani rupee", "₨"),
    ],
    [
      Language("Urdu", "ur", "اردو"),
      Language("English", "en", "English"),
    ],
    [
      "92",
    ],
    [
      duration.hours(5),
    ],
  )
}

fn country_pw() {
  GeneratedCountry(
    "Palau",
    "PW",
    "PLW",
    "585",
    region.Oceania,
    Some(region.Micronesia),
    Some("Ngerulmud"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "680",
    ],
    [
      duration.hours(9),
    ],
  )
}

fn country_ps() {
  GeneratedCountry(
    "Palestine, State of",
    "PS",
    "PSE",
    "275",
    region.Asia,
    Some(region.WesternAsia),
    Some("Ramallah"),
    [
      Currency("EGP", "Egyptian pound", "E£"),
      Currency("ILS", "Israeli new shekel", "₪"),
      Currency("JOD", "Jordanian dinar", "د.أ"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "970",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_pa() {
  GeneratedCountry(
    "Panama",
    "PA",
    "PAN",
    "591",
    region.Americas,
    Some(region.CentralAmerica),
    Some("Panama City"),
    [
      Currency("PAB", "Panamanian balboa", "B/."),
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "507",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_pg() {
  GeneratedCountry(
    "Papua New Guinea",
    "PG",
    "PNG",
    "598",
    region.Oceania,
    Some(region.Melanesia),
    Some("Port Moresby"),
    [
      Currency("PGK", "Papua New Guinean kina", "K"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "675",
    ],
    [
      duration.hours(10),
    ],
  )
}

fn country_py() {
  GeneratedCountry(
    "Paraguay",
    "PY",
    "PRY",
    "600",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Asunción"),
    [
      Currency("PYG", "Paraguayan guaraní", "₲"),
    ],
    [
      Language("Spanish", "es", "Español"),
      Language("Guaraní", "gn", "Avañe'ẽ"),
    ],
    [
      "595",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_pe() {
  GeneratedCountry(
    "Peru",
    "PE",
    "PER",
    "604",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Lima"),
    [
      Currency("PEN", "Peruvian sol", "S/."),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "51",
    ],
    [
      duration.hours(-5),
    ],
  )
}

fn country_ph() {
  GeneratedCountry(
    "Philippines",
    "PH",
    "PHL",
    "608",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Manila"),
    [
      Currency("PHP", "Philippine peso", "₱"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "63",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_pn() {
  GeneratedCountry(
    "Pitcairn",
    "PN",
    "PCN",
    "612",
    region.Oceania,
    Some(region.Polynesia),
    Some("Adamstown"),
    [
      Currency("NZD", "New Zealand dollar", "$"),
      Currency("PND", "Pitcairn Islands dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "64",
    ],
    [
      duration.hours(-8),
    ],
  )
}

fn country_pl() {
  GeneratedCountry(
    "Poland",
    "PL",
    "POL",
    "616",
    region.Europe,
    Some(region.CentralEurope),
    Some("Warsaw"),
    [
      Currency("PLN", "Polish złoty", "zł"),
    ],
    [
      Language("Polish", "pl", "język polski"),
    ],
    [
      "48",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_pt() {
  GeneratedCountry(
    "Portugal",
    "PT",
    "PRT",
    "620",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Lisbon"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "351",
    ],
    [
      duration.hours(-1),
      duration.empty,
    ],
  )
}

fn country_pr() {
  GeneratedCountry(
    "Puerto Rico",
    "PR",
    "PRI",
    "630",
    region.Americas,
    Some(region.Caribbean),
    Some("San Juan"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_qa() {
  GeneratedCountry(
    "Qatar",
    "QA",
    "QAT",
    "634",
    region.Asia,
    Some(region.WesternAsia),
    Some("Doha"),
    [
      Currency("QAR", "Qatari riyal", "ر.ق"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "974",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_xk() {
  GeneratedCountry(
    "Republic of Kosovo",
    "XK",
    "UNK",
    "926",
    region.Europe,
    Some(region.EasternEurope),
    Some("Pristina"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Albanian", "sq", "Shqip"),
      Language("Serbian", "sr", "српски језик"),
    ],
    [
      "383",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_re() {
  GeneratedCountry(
    "Réunion",
    "RE",
    "REU",
    "638",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Saint-Denis"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "262",
    ],
    [
      duration.hours(4),
    ],
  )
}

fn country_ro() {
  GeneratedCountry(
    "Romania",
    "RO",
    "ROU",
    "642",
    region.Europe,
    Some(region.EasternEurope),
    Some("Bucharest"),
    [
      Currency("RON", "Romanian leu", "lei"),
    ],
    [
      Language("Romanian", "ro", "Română"),
    ],
    [
      "40",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_ru() {
  GeneratedCountry(
    "Russian Federation",
    "RU",
    "RUS",
    "643",
    region.Europe,
    Some(region.EasternEurope),
    Some("Moscow"),
    [
      Currency("RUB", "Russian ruble", "₽"),
    ],
    [
      Language("Russian", "ru", "Русский"),
    ],
    [
      "7",
    ],
    [
      duration.hours(3),
      duration.hours(4),
      duration.hours(6),
      duration.hours(7),
      duration.hours(8),
      duration.hours(9),
      duration.hours(10),
      duration.hours(11),
      duration.hours(12),
    ],
  )
}

fn country_rw() {
  GeneratedCountry(
    "Rwanda",
    "RW",
    "RWA",
    "646",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Kigali"),
    [
      Currency("RWF", "Rwandan franc", "Fr"),
    ],
    [
      Language("Kinyarwanda", "rw", "Ikinyarwanda"),
      Language("English", "en", "English"),
      Language("French", "fr", "français"),
    ],
    [
      "250",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_bl() {
  GeneratedCountry(
    "Saint Barthélemy",
    "BL",
    "BLM",
    "652",
    region.Americas,
    Some(region.Caribbean),
    Some("Gustavia"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "590",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_sh() {
  GeneratedCountry(
    "Saint Helena, Ascension and Tristan da Cunha",
    "SH",
    "SHN",
    "654",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Jamestown"),
    [
      Currency("SHP", "Saint Helena pound", "£"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "290",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_kn() {
  GeneratedCountry(
    "Saint Kitts and Nevis",
    "KN",
    "KNA",
    "659",
    region.Americas,
    Some(region.Caribbean),
    Some("Basseterre"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_lc() {
  GeneratedCountry(
    "Saint Lucia",
    "LC",
    "LCA",
    "662",
    region.Americas,
    Some(region.Caribbean),
    Some("Castries"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_mf() {
  GeneratedCountry(
    "Saint Martin (French part)",
    "MF",
    "MAF",
    "663",
    region.Americas,
    Some(region.Caribbean),
    Some("Marigot"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("English", "en", "English"),
      Language("French", "fr", "français"),
      Language("Dutch", "nl", "Nederlands"),
    ],
    [
      "590",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_pm() {
  GeneratedCountry(
    "Saint Pierre and Miquelon",
    "PM",
    "SPM",
    "666",
    region.Americas,
    Some(region.NorthernAmerica),
    Some("Saint-Pierre"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "508",
    ],
    [
      duration.hours(-3),
    ],
  )
}

fn country_vc() {
  GeneratedCountry(
    "Saint Vincent and the Grenadines",
    "VC",
    "VCT",
    "670",
    region.Americas,
    Some(region.Caribbean),
    Some("Kingstown"),
    [
      Currency("XCD", "East Caribbean dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_ws() {
  GeneratedCountry(
    "Samoa",
    "WS",
    "WSM",
    "882",
    region.Oceania,
    Some(region.Polynesia),
    Some("Apia"),
    [
      Currency("WST", "Samoan tālā", "T"),
    ],
    [
      Language("Samoan", "sm", "gagana fa'a Samoa"),
      Language("English", "en", "English"),
    ],
    [
      "685",
    ],
    [
      duration.hours(13),
    ],
  )
}

fn country_sm() {
  GeneratedCountry(
    "San Marino",
    "SM",
    "SMR",
    "674",
    region.Europe,
    Some(region.SouthernEurope),
    Some("City of San Marino"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Italian", "it", "Italiano"),
    ],
    [
      "378",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_st() {
  GeneratedCountry(
    "Sao Tome and Principe",
    "ST",
    "STP",
    "678",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("São Tomé"),
    [
      Currency("STD", "São Tomé and Príncipe dobra", "Db"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "239",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_sa() {
  GeneratedCountry(
    "Saudi Arabia",
    "SA",
    "SAU",
    "682",
    region.Asia,
    Some(region.WesternAsia),
    Some("Riyadh"),
    [
      Currency("SAR", "Saudi riyal", "ر.س"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "966",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_sn() {
  GeneratedCountry(
    "Senegal",
    "SN",
    "SEN",
    "686",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Dakar"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "221",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_rs() {
  GeneratedCountry(
    "Serbia",
    "RS",
    "SRB",
    "688",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Belgrade"),
    [
      Currency("RSD", "Serbian dinar", "дин."),
    ],
    [
      Language("Serbian", "sr", "српски језик"),
    ],
    [
      "381",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_sc() {
  GeneratedCountry(
    "Seychelles",
    "SC",
    "SYC",
    "690",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Victoria"),
    [
      Currency("SCR", "Seychellois rupee", "₨"),
    ],
    [
      Language("French", "fr", "français"),
      Language("English", "en", "English"),
    ],
    [
      "248",
    ],
    [
      duration.hours(4),
    ],
  )
}

fn country_sl() {
  GeneratedCountry(
    "Sierra Leone",
    "SL",
    "SLE",
    "694",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Freetown"),
    [
      Currency("SLL", "Sierra Leonean leone", "Le"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "232",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_sg() {
  GeneratedCountry(
    "Singapore",
    "SG",
    "SGP",
    "702",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Singapore"),
    [
      Currency("SGD", "Singapore dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Malay", "ms", "bahasa Melayu"),
      Language("Tamil", "ta", "தமிழ்"),
      Language("Chinese", "zh", "中文 (Zhōngwén)"),
    ],
    [
      "65",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_sx() {
  GeneratedCountry(
    "Sint Maarten (Dutch part)",
    "SX",
    "SXM",
    "534",
    region.Americas,
    Some(region.Caribbean),
    Some("Philipsburg"),
    [
      Currency("ANG", "Netherlands Antillean guilder", "ƒ"),
    ],
    [
      Language("Dutch", "nl", "Nederlands"),
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_sk() {
  GeneratedCountry(
    "Slovakia",
    "SK",
    "SVK",
    "703",
    region.Europe,
    Some(region.CentralEurope),
    Some("Bratislava"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Slovak", "sk", "slovenčina"),
    ],
    [
      "421",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_si() {
  GeneratedCountry(
    "Slovenia",
    "SI",
    "SVN",
    "705",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Ljubljana"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Slovene", "sl", "slovenski jezik"),
    ],
    [
      "386",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_sb() {
  GeneratedCountry(
    "Solomon Islands",
    "SB",
    "SLB",
    "090",
    region.Oceania,
    Some(region.Melanesia),
    Some("Honiara"),
    [
      Currency("SBD", "Solomon Islands dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "677",
    ],
    [
      duration.hours(11),
    ],
  )
}

fn country_so() {
  GeneratedCountry(
    "Somalia",
    "SO",
    "SOM",
    "706",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Mogadishu"),
    [
      Currency("SOS", "Somali shilling", "Sh"),
    ],
    [
      Language("Somali", "so", "Soomaaliga"),
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "252",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_za() {
  GeneratedCountry(
    "South Africa",
    "ZA",
    "ZAF",
    "710",
    region.Africa,
    Some(region.SouthernAfrica),
    Some("Pretoria"),
    [
      Currency("ZAR", "South African rand", "R"),
    ],
    [
      Language("Afrikaans", "af", "Afrikaans"),
      Language("English", "en", "English"),
      Language("Southern Ndebele", "nr", "isiNdebele"),
      Language("Southern Sotho", "st", "Sesotho"),
      Language("Swati", "ss", "SiSwati"),
      Language("Tswana", "tn", "Setswana"),
      Language("Tsonga", "ts", "Xitsonga"),
      Language("Venda", "ve", "Tshivenḓa"),
      Language("Xhosa", "xh", "isiXhosa"),
      Language("Zulu", "zu", "isiZulu"),
    ],
    [
      "27",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_gs() {
  GeneratedCountry(
    "South Georgia and the South Sandwich Islands",
    "GS",
    "SGS",
    "239",
    region.Americas,
    Some(region.SouthAmerica),
    Some("King Edward Point"),
    [
      Currency("FKP", "Falkland Islands Pound", "£"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "500",
    ],
    [
      duration.hours(-2),
    ],
  )
}

fn country_ss() {
  GeneratedCountry(
    "South Sudan",
    "SS",
    "SSD",
    "728",
    region.Africa,
    Some(region.MiddleAfrica),
    Some("Juba"),
    [
      Currency("SSP", "South Sudanese pound", "£"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "211",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_es() {
  GeneratedCountry(
    "Spain",
    "ES",
    "ESP",
    "724",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Madrid"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "34",
    ],
    [
      duration.empty,
      duration.hours(1),
    ],
  )
}

fn country_lk() {
  GeneratedCountry(
    "Sri Lanka",
    "LK",
    "LKA",
    "144",
    region.Asia,
    Some(region.SouthernAsia),
    Some("Sri Jayawardenepura Kotte"),
    [
      Currency("LKR", "Sri Lankan rupee", "Rs"),
    ],
    [
      Language("Sinhalese", "si", "සිංහල"),
      Language("Tamil", "ta", "தமிழ்"),
    ],
    [
      "94",
    ],
    [
      duration.add(duration.hours(5), duration.minutes(30)),
    ],
  )
}

fn country_sd() {
  GeneratedCountry(
    "Sudan",
    "SD",
    "SDN",
    "729",
    region.Africa,
    Some(region.NorthernAfrica),
    Some("Khartoum"),
    [
      Currency("SDG", "Sudanese pound", "ج.س."),
    ],
    [
      Language("Arabic", "ar", "العربية"),
      Language("English", "en", "English"),
    ],
    [
      "249",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_sr() {
  GeneratedCountry(
    "Suriname",
    "SR",
    "SUR",
    "740",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Paramaribo"),
    [
      Currency("SRD", "Surinamese dollar", "$"),
    ],
    [
      Language("Dutch", "nl", "Nederlands"),
    ],
    [
      "597",
    ],
    [
      duration.hours(-3),
    ],
  )
}

fn country_sj() {
  GeneratedCountry(
    "Svalbard and Jan Mayen",
    "SJ",
    "SJM",
    "744",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Longyearbyen"),
    [
      Currency("NOK", "Norwegian krone", "kr"),
    ],
    [
      Language("Norwegian", "no", "Norsk"),
    ],
    [
      "47",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_sz() {
  GeneratedCountry(
    "Swaziland",
    "SZ",
    "SWZ",
    "748",
    region.Africa,
    Some(region.SouthernAfrica),
    Some("Mbabane"),
    [
      Currency("SZL", "Swazi lilangeni", "L"),
    ],
    [
      Language("English", "en", "English"),
      Language("Swati", "ss", "SiSwati"),
    ],
    [
      "268",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_se() {
  GeneratedCountry(
    "Sweden",
    "SE",
    "SWE",
    "752",
    region.Europe,
    Some(region.NorthernEurope),
    Some("Stockholm"),
    [
      Currency("SEK", "Swedish krona", "kr"),
    ],
    [
      Language("Swedish", "sv", "svenska"),
    ],
    [
      "46",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ch() {
  GeneratedCountry(
    "Switzerland",
    "CH",
    "CHE",
    "756",
    region.Europe,
    Some(region.CentralEurope),
    Some("Bern"),
    [
      Currency("CHF", "Swiss franc", "Fr"),
    ],
    [
      Language("German", "de", "Deutsch"),
      Language("French", "fr", "français"),
      Language("Italian", "it", "Italiano"),
      Language("Romansh", "", ""),
    ],
    [
      "41",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_sy() {
  GeneratedCountry(
    "Syrian Arab Republic",
    "SY",
    "SYR",
    "760",
    region.Asia,
    Some(region.WesternAsia),
    Some("Damascus"),
    [
      Currency("SYP", "Syrian pound", "£"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "963",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_tw() {
  GeneratedCountry(
    "Taiwan",
    "TW",
    "TWN",
    "158",
    region.Asia,
    Some(region.EasternAsia),
    Some("Taipei"),
    [
      Currency("TWD", "New Taiwan dollar", "$"),
    ],
    [
      Language("Chinese", "zh", "中文 (Zhōngwén)"),
    ],
    [
      "886",
    ],
    [
      duration.hours(8),
    ],
  )
}

fn country_tj() {
  GeneratedCountry(
    "Tajikistan",
    "TJ",
    "TJK",
    "762",
    region.Asia,
    Some(region.CentralAsia),
    Some("Dushanbe"),
    [
      Currency("TJS", "Tajikistani somoni", "ЅМ"),
    ],
    [
      Language("Tajik", "tg", "тоҷикӣ"),
      Language("Russian", "ru", "Русский"),
    ],
    [
      "992",
    ],
    [
      duration.hours(5),
    ],
  )
}

fn country_tz() {
  GeneratedCountry(
    "Tanzania, United Republic of",
    "TZ",
    "TZA",
    "834",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Dodoma"),
    [
      Currency("TZS", "Tanzanian shilling", "Sh"),
    ],
    [
      Language("Swahili", "sw", "Kiswahili"),
      Language("English", "en", "English"),
    ],
    [
      "255",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_th() {
  GeneratedCountry(
    "Thailand",
    "TH",
    "THA",
    "764",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Bangkok"),
    [
      Currency("THB", "Thai baht", "฿"),
    ],
    [
      Language("Thai", "th", "ไทย"),
    ],
    [
      "66",
    ],
    [
      duration.hours(7),
    ],
  )
}

fn country_tl() {
  GeneratedCountry(
    "Timor-Leste",
    "TL",
    "TLS",
    "626",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Dili"),
    [
      Currency("USD", "United States Dollar", "$"),
    ],
    [
      Language("Portuguese", "pt", "Português"),
    ],
    [
      "670",
    ],
    [
      duration.hours(9),
    ],
  )
}

fn country_tg() {
  GeneratedCountry(
    "Togo",
    "TG",
    "TGO",
    "768",
    region.Africa,
    Some(region.WesternAfrica),
    Some("Lomé"),
    [
      Currency("XOF", "West African CFA franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "228",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_tk() {
  GeneratedCountry(
    "Tokelau",
    "TK",
    "TKL",
    "772",
    region.Oceania,
    Some(region.Polynesia),
    Some("Fakaofo"),
    [
      Currency("NZD", "New Zealand dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "690",
    ],
    [
      duration.hours(13),
    ],
  )
}

fn country_to() {
  GeneratedCountry(
    "Tonga",
    "TO",
    "TON",
    "776",
    region.Oceania,
    Some(region.Polynesia),
    Some("Nuku'alofa"),
    [
      Currency("TOP", "Tongan paʻanga", "T$"),
    ],
    [
      Language("English", "en", "English"),
      Language("Tonga (Tonga Islands)", "to", "faka Tonga"),
    ],
    [
      "676",
    ],
    [
      duration.hours(13),
    ],
  )
}

fn country_tt() {
  GeneratedCountry(
    "Trinidad and Tobago",
    "TT",
    "TTO",
    "780",
    region.Americas,
    Some(region.Caribbean),
    Some("Port of Spain"),
    [
      Currency("TTD", "Trinidad and Tobago dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_tn() {
  GeneratedCountry(
    "Tunisia",
    "TN",
    "TUN",
    "788",
    region.Africa,
    Some(region.NorthernAfrica),
    Some("Tunis"),
    [
      Currency("TND", "Tunisian dinar", "د.ت"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "216",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_tr() {
  GeneratedCountry(
    "Turkey",
    "TR",
    "TUR",
    "792",
    region.Asia,
    Some(region.WesternAsia),
    Some("Ankara"),
    [
      Currency("TRY", "Turkish lira", "₺"),
    ],
    [
      Language("Turkish", "tr", "Türkçe"),
    ],
    [
      "90",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_tm() {
  GeneratedCountry(
    "Turkmenistan",
    "TM",
    "TKM",
    "795",
    region.Asia,
    Some(region.CentralAsia),
    Some("Ashgabat"),
    [
      Currency("TMT", "Turkmenistan manat", "m"),
    ],
    [
      Language("Turkmen", "tk", "Türkmen"),
      Language("Russian", "ru", "Русский"),
    ],
    [
      "993",
    ],
    [
      duration.hours(5),
    ],
  )
}

fn country_tc() {
  GeneratedCountry(
    "Turks and Caicos Islands",
    "TC",
    "TCA",
    "796",
    region.Americas,
    Some(region.Caribbean),
    Some("Cockburn Town"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_tv() {
  GeneratedCountry(
    "Tuvalu",
    "TV",
    "TUV",
    "798",
    region.Oceania,
    Some(region.Polynesia),
    Some("Funafuti"),
    [
      Currency("AUD", "Australian dollar", "$"),
      Currency("TVD[G]", "Tuvaluan dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "688",
    ],
    [
      duration.hours(12),
    ],
  )
}

fn country_ug() {
  GeneratedCountry(
    "Uganda",
    "UG",
    "UGA",
    "800",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Kampala"),
    [
      Currency("UGX", "Ugandan shilling", "Sh"),
    ],
    [
      Language("English", "en", "English"),
      Language("Swahili", "sw", "Kiswahili"),
    ],
    [
      "256",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_ua() {
  GeneratedCountry(
    "Ukraine",
    "UA",
    "UKR",
    "804",
    region.Europe,
    Some(region.EasternEurope),
    Some("Kyiv"),
    [
      Currency("UAH", "Ukrainian hryvnia", "₴"),
    ],
    [
      Language("Ukrainian", "uk", "Українська"),
    ],
    [
      "380",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_ae() {
  GeneratedCountry(
    "United Arab Emirates",
    "AE",
    "ARE",
    "784",
    region.Asia,
    Some(region.WesternAsia),
    Some("Abu Dhabi"),
    [
      Currency("AED", "United Arab Emirates dirham", "د.إ"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "971",
    ],
    [
      duration.hours(4),
    ],
  )
}

fn country_gb() {
  GeneratedCountry(
    "United Kingdom of Great Britain and Northern Ireland",
    "GB",
    "GBR",
    "826",
    region.Europe,
    Some(region.NorthernEurope),
    Some("London"),
    [
      Currency("GBP", "British pound", "£"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "44",
    ],
    [
      duration.hours(-8),
      duration.hours(-5),
      duration.hours(-4),
      duration.hours(-3),
      duration.hours(-2),
      duration.empty,
      duration.hours(1),
      duration.hours(2),
      duration.hours(6),
    ],
  )
}

fn country_um() {
  GeneratedCountry(
    "United States Minor Outlying Islands",
    "UM",
    "UMI",
    "581",
    region.Americas,
    Some(region.NorthernAmerica),
    None,
    [
      Currency("GBP", "British pound", "£"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "246",
    ],
    [
      duration.hours(-11),
      duration.hours(-10),
      duration.hours(12),
    ],
  )
}

fn country_us() {
  GeneratedCountry(
    "United States of America",
    "US",
    "USA",
    "840",
    region.Americas,
    Some(region.NorthernAmerica),
    Some("Washington, D.C."),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-12),
      duration.hours(-11),
      duration.hours(-10),
      duration.hours(-9),
      duration.hours(-8),
      duration.hours(-7),
      duration.hours(-6),
      duration.hours(-5),
      duration.hours(-4),
      duration.hours(10),
      duration.hours(12),
    ],
  )
}

fn country_uy() {
  GeneratedCountry(
    "Uruguay",
    "UY",
    "URY",
    "858",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Montevideo"),
    [
      Currency("UYU", "Uruguayan peso", "$"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "598",
    ],
    [
      duration.hours(-3),
    ],
  )
}

fn country_uz() {
  GeneratedCountry(
    "Uzbekistan",
    "UZ",
    "UZB",
    "860",
    region.Asia,
    Some(region.CentralAsia),
    Some("Tashkent"),
    [
      Currency("UZS", "Uzbekistani so'm", "so'm"),
    ],
    [
      Language("Uzbek", "uz", "Oʻzbek"),
      Language("Russian", "ru", "Русский"),
    ],
    [
      "998",
    ],
    [
      duration.hours(5),
    ],
  )
}

fn country_vu() {
  GeneratedCountry(
    "Vanuatu",
    "VU",
    "VUT",
    "548",
    region.Oceania,
    Some(region.Melanesia),
    Some("Port Vila"),
    [
      Currency("VUV", "Vanuatu vatu", "Vt"),
    ],
    [
      Language("Bislama", "bi", "Bislama"),
      Language("English", "en", "English"),
      Language("French", "fr", "français"),
    ],
    [
      "678",
    ],
    [
      duration.hours(11),
    ],
  )
}

fn country_va() {
  GeneratedCountry(
    "Vatican City",
    "VA",
    "VAT",
    "336",
    region.Europe,
    Some(region.SouthernEurope),
    Some("Vatican City"),
    [
      Currency("EUR", "Euro", "€"),
    ],
    [
      Language("Latin", "la", "latine"),
      Language("Italian", "it", "Italiano"),
      Language("French", "fr", "Français"),
      Language("German", "de", "Deutsch"),
    ],
    [
      "379",
    ],
    [
      duration.hours(1),
    ],
  )
}

fn country_ve() {
  GeneratedCountry(
    "Venezuela (Bolivarian Republic of)",
    "VE",
    "VEN",
    "862",
    region.Americas,
    Some(region.SouthAmerica),
    Some("Caracas"),
    [
      Currency("VEF", "Venezuelan bolívar", "Bs S"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "58",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_vn() {
  GeneratedCountry(
    "Vietnam",
    "VN",
    "VNM",
    "704",
    region.Asia,
    Some(region.SouthEasternAsia),
    Some("Hanoi"),
    [
      Currency("VND", "Vietnamese đồng", "₫"),
    ],
    [
      Language("Vietnamese", "vi", "Tiếng Việt"),
    ],
    [
      "84",
    ],
    [
      duration.hours(7),
    ],
  )
}

fn country_vg() {
  GeneratedCountry(
    "Virgin Islands (British)",
    "VG",
    "VGB",
    "092",
    region.Americas,
    Some(region.Caribbean),
    Some("Road Town"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_vi() {
  GeneratedCountry(
    "Virgin Islands (U.S.)",
    "VI",
    "VIR",
    "850",
    region.Americas,
    Some(region.Caribbean),
    Some("Charlotte Amalie"),
    [
      Currency("USD", "United States dollar", "$"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "1 340",
    ],
    [
      duration.hours(-4),
    ],
  )
}

fn country_wf() {
  GeneratedCountry(
    "Wallis and Futuna",
    "WF",
    "WLF",
    "876",
    region.Oceania,
    Some(region.Polynesia),
    Some("Mata-Utu"),
    [
      Currency("XPF", "CFP franc", "Fr"),
    ],
    [
      Language("French", "fr", "français"),
    ],
    [
      "681",
    ],
    [
      duration.hours(12),
    ],
  )
}

fn country_eh() {
  GeneratedCountry(
    "Western Sahara",
    "EH",
    "ESH",
    "732",
    region.Africa,
    Some(region.NorthernAfrica),
    Some("El Aaiún"),
    [
      Currency("MAD", "Moroccan dirham", "د.م."),
      Currency("DZD", "Algerian dinar", "د.ج"),
    ],
    [
      Language("Spanish", "es", "Español"),
    ],
    [
      "212",
    ],
    [
      duration.empty,
    ],
  )
}

fn country_ye() {
  GeneratedCountry(
    "Yemen",
    "YE",
    "YEM",
    "887",
    region.Asia,
    Some(region.WesternAsia),
    Some("Sana'a"),
    [
      Currency("YER", "Yemeni rial", "﷼"),
    ],
    [
      Language("Arabic", "ar", "العربية"),
    ],
    [
      "967",
    ],
    [
      duration.hours(3),
    ],
  )
}

fn country_zm() {
  GeneratedCountry(
    "Zambia",
    "ZM",
    "ZMB",
    "894",
    region.Africa,
    Some(region.EasternAfrica),
    Some("Lusaka"),
    [
      Currency("ZMW", "Zambian kwacha", "ZK"),
    ],
    [
      Language("English", "en", "English"),
    ],
    [
      "260",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn country_zw() {
  GeneratedCountry(
    "Zimbabwe",
    "ZW",
    "ZWE",
    "716",
    region.Africa,
    Some(region.SouthernAfrica),
    Some("Harare"),
    [
      Currency("ZMW", "Zambian kwacha", "K"),
    ],
    [
      Language("English", "en", "English"),
      Language("Shona", "sn", "chiShona"),
      Language("Northern Ndebele", "nd", "isiNdebele"),
    ],
    [
      "263",
    ],
    [
      duration.hours(2),
    ],
  )
}

fn normalize(value: String) -> String {
  value
  |> string.trim()
  |> string.uppercase()
}
