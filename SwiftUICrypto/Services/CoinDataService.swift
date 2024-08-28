//
//  CoinDataService.swift
//  SwiftUICrypto
//
//  Created by Dhirendra Kumar Verma on 15/08/24.
//

import Foundation
import Combine

class CoinDataService {
    @Published var allCoins:[CoinModel] = []
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        guard let url = URL(string: Constants.getAllCoinsURL) else { return }
        
        coinSubscription = NetworkManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
    }
}
