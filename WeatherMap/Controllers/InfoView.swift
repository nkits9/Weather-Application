//
//  InfoView.swift
//  Weather App
//
//  Created by MOHIT SHARMA on 01/09/20.
//  Copyright © 2020 Ankit Sharma. All rights reserved.
//



import UIKit

class InfoView: UIView {

    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    func updateViews(weather: WeatherModel){
        if let summary: String = weather.summary {
            summaryLabel.text = summary
        }
        if let icon: String = weather.icon {
            iconView.image = UIImage(named: icon)
        }
        if let temperature: Double = weather.temperature {
            temperatureLabel.text = String(temperature)
        }
    }
    
}
