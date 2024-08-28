//
//  Constants.swift
//  SwiftUICrypto
//
//  Created by Dhirendra Kumar Verma on 29/08/24.
//

import Foundation


struct Constants {
    // URLS
    static let getAllCoinsURL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h"
    static let marketDataURL = "https://api.coingecko.com/api/v3/global"
    static let defaultURL = "https://www.google.com"
    static let youtubeURL = "https://www.youtube.com/c/swiftfulthinking"
    static let coffeeURL = "https://www.buymeacoffee.com/nicksarno"
    static let coingeckoURL = "https://www.coingecko.com"
    static let personalURL = "https://www.nicksarno.com"
    
    static func getCoinDetailsURL(coinId: String) -> String {
        return "https://api.coingecko.com/api/v3/coins/\(coinId)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false"
    }
    
    static let badURLResponseText = "[🔥] Bad response from URL: "
    static let unknownResponseText = "[⚠️] Unknown error occured"
    static let coreDataLoadingErrorText = "Error loading core data!"
    static let coreDataFetchingPortfolioErrorText = "Error fetching Portfolio Entities. "
    static let coreDataSavingErrorText = "Error saving to Core Data. "
    static let lodingDataText = "Loading your portfolio..."
    static let searchPlaceholderText = "Search by name or symbol..."
}
