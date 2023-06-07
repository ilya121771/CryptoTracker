//
//  Crypto.swift
//  CryptoTracker
//
//  Created by Илья on 7.06.23.

import Foundation

// MARK: - Crypto
struct Welcome: Codable {
    let symbol: String
    let price24H, volume24H, lastTradePrice: Double

    enum CodingKeys: String, CodingKey {
        case symbol
        case price24H = "price_24h"
        case volume24H = "volume_24h"
        case lastTradePrice = "last_trade_price"
    }
}
