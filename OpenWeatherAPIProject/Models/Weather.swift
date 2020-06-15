//
//  Weather.swift
//  OpenWeatherAPIProject
//
//  Created by Nicholas Kearns on 6/14/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import Foundation



struct Response: Model, Hashable {
    
    let weather: Weather
    let main: Main
    
}

struct Main: Model, Hashable {
    
    let temp: Double
    let pressure, humidity: Int
    let tempMin, tempMax: Double
    
}

struct Weather: Model, Hashable {
    
    let main: String
    let description: String
    
    
}


