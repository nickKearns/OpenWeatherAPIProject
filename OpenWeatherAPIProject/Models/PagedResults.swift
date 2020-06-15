//
//  PagedResults.swift
//  OpenWeatherAPIProject
//
//  Created by Nicholas Kearns on 6/14/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import Foundation

struct PagedResults<T: Model>: Model {
//    let totalResults: Int
    let currentWeather: [T]
}

extension PagedResults {
    static var decoder: JSONDecoder { T.decoder }
}
