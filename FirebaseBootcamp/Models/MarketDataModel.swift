//
//  MarketDataModel.swift
//  Crypto
//
//  Created by volkancelik on 9.05.2023.
//

import Foundation
import UIKit
//JSON Data
/*
URL:https://api.coingecko.com/api/v3/global
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10708,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 734,
     "total_market_cap": {
       "btc": 43011919.74610381,
       "eth": 644435715.0651786,
       "ltc": 15136854094.0078,
       "bch": 9968014903.181337,
       "bnb": 3780915551.911706,
       "eos": 1285844418152.3516,
       "xrp": 2797927983975.2417,
       "xlm": 13356267384542.445,
       "link": 181222862530.94955,
       "dot": 220919204717.28558,
       "yfi": 164568294.0916731,
       "usd": 1185821179760.9185,
       "aed": 4354388734035.1763,
       "ars": 269915193951764.47,
       "aud": 1751941697548.218,
       "bdt": 127526460007342.84,
       "bhd": 447065257160.4847,
       "bmd": 1185821179760.9185,
       "brl": 5940964110602.182,
       "cad": 1586332283225.1685,
       "chf": 1055076093944.0195,
       "clp": 944494711467773,
       "cny": 8210863012900.565,
       "czk": 25230124331183.164,
       "dkk": 8033015924002.368,
       "eur": 1078587370475.1398,
       "gbp": 938534774218.2935,
       "hkd": 9306220266499.865,
       "huf": 401773903411716.44,
       "idr": 17499094568949746,
       "ils": 4326393867623.38,
       "inr": 97265215396331.27,
       "jpy": 159891621758478.94,
       "krw": 1569797223525933.2,
       "kwd": 363430475173.1263,
       "lkr": 380300435675770.94,
       "mmk": 2490165137820272.5,
       "mxn": 21092023451230.492,
       "myr": 5268010591087.877,
       "ngn": 546070653279903.06,
       "nok": 12486181190669.262,
       "nzd": 1872999810147.65,
       "php": 66101825305645.305,
       "pkr": 334205792429979.44,
       "pln": 4918281093825.698,
       "rub": 92066862312985.17,
       "sar": 4447314424965.98,
       "sek": 12047063307055.541,
       "sgd": 1571375520684.8438,
       "thb": 39967509953251.89,
       "try": 23134778306545.63,
       "twd": 36398404021626.22,
       "uah": 43798326619250.73,
       "vef": 118736274729.46068,
       "vnd": 27816590311767896,
       "zar": 21805626920787.023,
       "xdr": 877467355102.9657,
       "xag": 46557568861.23147,
       "xau": 585807521.0136911,
       "bits": 43011919746103.805,
       "sats": 4301191974610381
     },
     "total_volume": {
       "btc": 1836105.8798259497,
       "eth": 27509867.324817523,
       "ltc": 646166620.0470582,
       "bch": 425517644.4567287,
       "bnb": 161400870.19992423,
       "eos": 54890516643.930405,
       "xrp": 119438798663.9881,
       "xlm": 570156394368.0375,
       "link": 7736096538.265014,
       "dot": 9430666037.282011,
       "yfi": 7025141.267776554,
       "usd": 50620694296.68725,
       "aed": 185881467388.6787,
       "ars": 11522221690978.793,
       "aud": 74787418719.48007,
       "bdt": 5443888215988.812,
       "bhd": 19084457336.09979,
       "bmd": 50620694296.68725,
       "brl": 253609678426.40225,
       "cad": 67717833795.393364,
       "chf": 45039408405.61743,
       "clp": 40318876800368.39,
       "cny": 350507811449.12244,
       "czk": 1077031202203.4656,
       "dkk": 342915820959.8933,
       "eur": 46043064911.437874,
       "gbp": 40064457190.83318,
       "hkd": 397266754219.3033,
       "huf": 17151046285993.768,
       "idr": 747006658138979.1,
       "ils": 184686414037.72247,
       "inr": 4152087024851.2603,
       "jpy": 6825502060326.973,
       "krw": 67011980150258.414,
       "kwd": 15514230388.04871,
       "lkr": 16234380380287.621,
       "mmk": 106300924912879.92,
       "mxn": 900382696351.0316,
       "myr": 224882434413.033,
       "ngn": 23310829723624.484,
       "nok": 533013890942.0971,
       "nzd": 79955184158.84026,
       "php": 2821774773768.7827,
       "pkr": 14266678264416.734,
       "pln": 209953075526.88776,
       "rub": 3930178151262.6143,
       "sar": 189848307476.54514,
       "sek": 514268693499.17395,
       "sgd": 67079354978.22923,
       "thb": 1706145190922.696,
       "try": 987584435381.2196,
       "twd": 1553786114056.0286,
       "uah": 1869676255020.6396,
       "vef": 5068650119.927291,
       "vnd": 1187443046709699.2,
       "zar": 930845217764.8923,
       "xdr": 37457592675.94239,
       "xag": 1987463624.9932132,
       "xau": 25007129.189506456,
       "bits": 1836105879825.9497,
       "sats": 183610587982594.97
     },
     "market_cap_percentage": {
       "btc": 45.029705258067935,
       "eth": 18.686365409541892,
       "usdt": 6.957984979066002,
       "bnb": 4.1804119785635985,
       "usdc": 2.5538810311750213,
       "xrp": 1.8572007795337222,
       "ada": 1.075691505451472,
       "steth": 0.9903558363491115,
       "doge": 0.8529166487540738,
       "matic": 0.6947157056606895
     },
     "market_cap_change_percentage_24h_usd": -1.7491021665061466,
     "updated_at": 1683615684
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys:String,CodingKey{
        case totalMarketCap="total_market_cap"
        case totalVolume="total_volume"
        case marketCapPercentage="market_cap_percentage"
        case marketCapChangePercentage24HUsd="market_cap_change_percentage_24h_usd"
    }
    
    var marketCap:String{
//        if let item=totalMarketCap.first(where: { (key,value) in
//            return key=="usd"
//        }){
//            return "\(item.value)"
//        }
        if let item=totalMarketCap.first(where: {$0.key=="usd"}){
            return "$"+item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume:String{
        if let item=totalVolume.first(where: {$0.key=="usd"}){
            return "$"+item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance:String{
        if let item=marketCapPercentage.first(where: {$0.key=="btc"}){
            return item.value.asPercentString()
        }
        return ""
    }
}
