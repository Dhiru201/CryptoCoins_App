//
//  MarketDataModel.swift
//  SwiftUICrypto
//
//  Created by Dhirendra Kumar Verma on 18/08/24.
//

import Foundation
// JSON Data
/*
 URL: https://api.coingecko.com/api/v3/global
 
 Response:
 {
   "data": {
     "active_cryptocurrencies": 15087,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 1171,
     "total_market_cap": {
       "btc": 36671510.9747384,
       "eth": 834570970.124558,
       "ltc": 32261328535.3836,
       "bch": 6358618812.13171,
       "bnb": 4039746082.08787,
       "eos": 4350896262740.41,
       "xrp": 3843269125742.01,
       "xlm": 22785578068610.8,
       "link": 215526954085.896,
       "dot": 501610140048.609,
       "yfi": 442606901.686137,
       "usd": 2179281891406.1,
       "aed": 8004502387134.6,
       "ars": 2.05013008441321e+15,
       "aud": 3267290554972.49,
       "bdt": 255103652344840,
       "bhd": 820724098149.213,
       "bmd": 2179281891406.1,
       "brl": 11926773935287.3,
       "cad": 2983327945240.38,
       "chf": 1887415026253.86,
       "clp": 2.04848139228391e+15,
       "cny": 15614554751924.7,
       "czk": 49777413537985.1,
       "dkk": 14744149564497.1,
       "eur": 1975508138150.17,
       "gbp": 1683689217199.55,
       "gel": 5851371878425.4,
       "hkd": 16985649953902.9,
       "huf": 778254252649489,
       "idr": 34209713346725536,
       "ils": 8005690095765.41,
       "inr": 182764713074111,
       "jpy": 321781867675568,
       "krw": 2.94196517494149e+15,
       "kwd": 666038669497.208,
       "lkr": 651081194386924,
       "mmk": 4572133408169993,
       "mxn": 40626390947781.6,
       "myr": 9667839290750.32,
       "ngn": 3.45193079509013e+15,
       "nok": 23267647934070.1,
       "nzd": 3599740007506.49,
       "php": 124418467744647,
       "pkr": 604647732003007,
       "pln": 8427546767176.24,
       "rub": 194778911081754,
       "sar": 8177951432871.61,
       "sek": 22753228443603.7,
       "sgd": 2872293532873.24,
       "thb": 75359733430246.9,
       "try": 73358984849230.4,
       "twd": 70154353007199.5,
       "uah": 89505277844812.3,
       "vef": 218211495786.493,
       "vnd": 54612804198636970,
       "zar": 39211928036164.7,
       "xdr": 1627426696609.12,
       "xag": 75134753084.9054,
       "xau": 868879690.103613,
       "bits": 36671510974738.4,
       "sats": 3667151097473838
     },
     "total_volume": {
       "btc": 755568.652942765,
       "eth": 17195246.3075909,
       "ltc": 664702595.985622,
       "bch": 131011047.070529,
       "bnb": 83233698.9762044,
       "eos": 89644542615.0302,
       "xrp": 79185547555.8062,
       "xlm": 469467116849.426,
       "link": 4440651776.89885,
       "dot": 10335022685.0494,
       "yfi": 9119337.91657875,
       "usd": 44901260932.6774,
       "aed": 164922331405.724,
       "ars": 42240256402431.4,
       "aud": 67318260354.5775,
       "bdt": 5256078024593.73,
       "bhd": 16909949571.0291,
       "bmd": 44901260932.6774,
       "brl": 245735620832.356,
       "cad": 61467581153.7887,
       "chf": 38887724858.4857,
       "clp": 42206287251498.1,
       "cny": 321717534582.633,
       "czk": 1025598681215.47,
       "dkk": 303783970966.122,
       "eur": 40702768529.1673,
       "gbp": 34690220282.7163,
       "gel": 120559885604.239,
       "hkd": 349967162898.427,
       "huf": 16034913797973.1,
       "idr": 704846523742889,
       "ils": 164946802592.932,
       "inr": 3765628532677.66,
       "jpy": 6629895683014.48,
       "krw": 60615355221286.4,
       "kwd": 13722858070.0277,
       "lkr": 13414678804431.4,
       "mmk": 94202845436757,
       "mxn": 837053796433.063,
       "myr": 199193218812.59,
       "ngn": 71122531675735.2,
       "nok": 479399537662.963,
       "nzd": 74167947709.8574,
       "php": 2563480248735.42,
       "pkr": 12457977875226.3,
       "pln": 173638609079.236,
       "rub": 4013165412493.59,
       "sar": 168496022763.356,
       "sek": 468800595019.805,
       "sgd": 59179861909.2688,
       "thb": 1552689015547.82,
       "try": 1511466200614.53,
       "twd": 1445438941314.28,
       "uah": 1844139508160.95,
       "vef": 4495963257.18899,
       "vnd": 1.1252255989729e+15,
       "zar": 807910633024.713,
       "xdr": 33531004429.2173,
       "xag": 1548053588.97417,
       "xau": 17902132.7338585,
       "bits": 755568652942.765,
       "sats": 75556865294276.5
     },
     "market_cap_percentage": {
       "btc": 53.8327695676326,
       "eth": 14.4110253409358,
       "usdt": 5.36084689816211,
       "bnb": 3.61130558271624,
       "sol": 3.01481370849022,
       "usdc": 1.5977777144767,
       "xrp": 1.46003517474635,
       "steth": 1.17532491454238,
       "ton": 0.745375865344848,
       "doge": 0.685595472975995
     },
     "market_cap_change_percentage_24h_usd": -0.712712893573385,
     "updated_at": 1723923750
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
