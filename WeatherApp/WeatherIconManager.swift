//
//  WeatherIconManager.swift
//  WeatherApp
//
//  Created by Артур Фомин on 10.01.2022.
//

import UIKit

enum WeatherIconManager: String {
    
    case ClearDay = "clear-day"
    case ClearNight = "clear-night"
    case Rain = "rain"
    case Snow = "snow"
    case Sleet = "sleet"
    case Wind = "wind"
    case Fog = "fog"
    case Cloudy = "cloudy"
    case PartlyCloudlyDay = "partly-cloudly-day"
    case PartlyCloudlyNight = "partly-cloudly-night"
    case UnpredictedIcon = "unpredicted-icon"
    
    init?(rawValue: String) {
        switch rawValue {
        case "clear-day": self = .ClearDay
        case "clear-night": self = .ClearNight
        case "rain": self = .Rain
        case "snow": self = .Snow
        case "sleet": self = .Sleet
        case "wind": self = .Wind
        case "fog": self = .Fog
        case "cloudy": self =  .Cloudy
        case "partly-cloudly-day": self = .PartlyCloudlyDay
        case "partly-cloudly-night": self = .PartlyCloudlyNight
        default: self = .UnpredictedIcon
        }
    }
}

extension WeatherIconManager {
    var image:UIImage {
        return UIImage(named: self.rawValue)!
    }
}
