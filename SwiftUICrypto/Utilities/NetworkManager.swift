//
//  NetworkManager.swift
//  SwiftUICrypto
//
//  Created by Dhirendra Kumar Verma on 15/08/24.
//

import Foundation
import Combine

class NetworkManager {
    
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse(let url):
                return Constants.badURLResponseText + "\(url)"
            case .unknown:
                return Constants.unknownResponseText
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
          //  .subscribe(on: DispatchQueue.global(qos: .default))   (.dataTaskPublisher is already handling task in background thread)
            .tryMap({ try handleURLResponse(output: $0, url: url) })
            .retry(3)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200, response.statusCode < 300 else {
            throw NetworkingError.badURLResponse(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case.failure(let error):
            print(error.localizedDescription)
        }
    }
}
