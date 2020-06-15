//
//  WeatherTableViewCell.swift
//  OpenWeatherAPIProject
//
//  Created by Nicholas Kearns on 6/14/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    static let identifier: String = "WeatherTableViewCell"

    @IBOutlet weak var currentWeatherLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupLabels(currentWeather: String) {
        self.currentWeatherLabel.text = currentWeather
    }
    
}
