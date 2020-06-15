//
//  WeatherDB.swift
//  OpenWeatherAPIProject
//
//  Created by Nicholas Kearns on 6/14/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import Foundation

struct WeatherDB { 
    

    
    
    
    public static let baseURL = URL(string: "https://community-open-weather-map.p.rapidapi.com/weather?")!
    public static var api: APIClient = {
        let configuration = URLSessionConfiguration.default
        let apiKey = "6478b03f0ecd259bb134cd044098108f"

        configuration.httpAdditionalHeaders = [
        
            "Authorization": "Bearer \(apiKey)"
        ]
        return APIClient(configuration: configuration)
    }()
}
