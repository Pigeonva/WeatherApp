//
//  ViewController.swift
//  WeatherApp
//
//  Created by Артур Фомин on 09.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather(temperature: 15, appearentTemperature: 10, humidity: 30, pressure: 730, image: icon)
        updateUIWith(currentWeather: currentWeather)
        
    }
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    func updateUIWith(currentWeather: CurrentWeather) {
        
        self.imageView.image = currentWeather.image
        self.pressureLabel.text = String(Int(currentWeather.pressure)) + " мм.рт.ст"
        self.humidityLabel.text = String(Int(currentWeather.humidity)) + "%"
        self.temperatureLabel.text = String(Int(currentWeather.temperature)) + "˚C"
        self.appearentTemperatureLabel.text = "Feels like: " + String(Int(currentWeather.appearentTemperature)) + "˚C"
        
    }

}

