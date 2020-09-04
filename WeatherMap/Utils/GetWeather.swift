//
//  GetWeather.swift
//  Weather App
//
//  Created by MOHIT SHARMA on 01/09/20.
//  Copyright © 2020 Ankit Sharma. All rights reserved.
//



import Foundation
import CoreLocation
import Alamofire

class GetWeather {

    private let baseURL = "https://api.darksky.net/forecast/e9d5346b4061908e922e76bd75fd29eb/"
    
    func getWeatherJson(coordinates: CLLocationCoordinate2D, completion: @escaping (WeatherModel?) -> Void){
        if let url = URL(string: "\(baseURL)\(coordinates.latitude),\(coordinates.longitude)?units=si") {
            print("URL = \(url)")
            Alamofire.request(url).responseJSON { (response) in
                if let jsonDic = response.result.value as? [String:Any] {
                    if let currentlyDic = jsonDic["currently"] as? [String:Any] {
                        let weather = WeatherModel(weatherJson: currentlyDic)
                        completion(weather)
                    } else {
                        completion(nil)
                    }
                }
            }
        }
    }
}
