//
//  APIError.swift
//  CryptoTracker
//
//  Created by Илья on 7.06.23.
//

import Foundation


enum APIError: Error {
    case invalidURL
    case invalidServerResponse
    case invalidData
}
extension APIError: CustomStringConvertible{
    public var description: String{
        switch self {
        case .invalidURL:
            return "Bad URL"
        case  .invalidServerResponse:
            return "The server did not return 200"
        case .invalidData:
            return "the server returned bad data"
        }
    }
}
