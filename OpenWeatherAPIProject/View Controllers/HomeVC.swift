//
//  ViewController.swift
//  OpenWeatherAPIProject
//
//  Created by Nicholas Kearns on 6/14/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    var weatherData: Response!
    
    let cityTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        
        
        return table
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        makeNetworkCallForWeatherData()
    }
    

    func makeNetworkCallForWeatherData() {
            
        let api = WeatherDB.api

        print("it got this far")
        api.send(request: .getWeather(completion: { result in
                switch result {
                case .success(let weatherData):
                    self.weatherData = weatherData
    //                print(page.articles)
                    self.cityTableView.reloadData()
                case .failure(let error):  print(error)
                }
            }))
            
        }
    
    func setupTableView() {
        self.view.addSubview(cityTableView)
        cityTableView.delegate = self
        cityTableView.dataSource = self
        
        cityTableView.backgroundColor  = .systemGray3
        
        cityTableView.register(WeatherTableViewCell.self, forCellReuseIdentifier: "WeatherTableViewCell")
        
        cityTableView.frame = view.bounds
        
        cityTableView.reloadData()
        
    }
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WeatherTableViewCell.identifier) as! WeatherTableViewCell
        cell.setupLabels(currentWeather: weatherData.weather.main)
        return cell
    }
    
    
    
    
}

