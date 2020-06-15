//
//  Model.swift
//  OpenWeatherAPIProject
//
//  Created by Nicholas Kearns on 6/14/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import Foundation


public protocol Model : Codable {
    static var decoder: JSONDecoder { get }
    static var encoder: JSONEncoder { get }
}

public extension Model {
    static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }

    static var encoder: JSONEncoder {
        let encoder = JSONEncoder()
//        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }
}
