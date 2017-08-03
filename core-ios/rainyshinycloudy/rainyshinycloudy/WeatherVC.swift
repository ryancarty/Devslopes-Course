//
//  WeatherVC.swift
//  rainyshinycloudy
//
//  Created by Ryan Carty on 7/22/17.
//  Copyright © 2017 Ryan Carty. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var currentWeatherImg: UIImageView!
    @IBOutlet weak var currentWeatherTypeLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather() //Creates generic class of current weather
    var forecast: Forecast!
    var forecasts = [Forecast]() //*
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add the delegate to the table view
        //Told it where the data is
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        
        currentWeather.downloadWeatherDetails {
            //Set up UI to load downloaded data
            self.downloadForecastData {
                self.updateMainUI()
            }
        }
    }
    
    func downloadForecastData(completed: @escaping DownloadComplete) {
        //Downloading forecast weather data for TableView
        let forecastURL = URL(string: FORECAST_URL)
        Alamofire.request(forecastURL!).responseJSON { response in
            let result = response.result //whatever response we get in json, we wanto to capture the raw data and pass as dictionary
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj) //Create a dictionary that every time i parse through and find a dictionary in my array, I run this loop and send the dictionary into another dicitonary*; Couldnt use until initiallized in Forecast**
                        self.forecasts.append(forecast) //The array it gets added to ^
                        print(obj)
                    }
                    self.tableView.reloadData()
                }
            }
            completed()
        }
    }
    
    
    //3 Functions you should have memorized
    //For table view and to fix UITableViewDataSource error
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Created a cell and gave it a reuse identifier
        if let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? WeatherCell { //Name cell with identifyer in storyboard
            let forecast = forecasts[indexPath.row]
            cell.configCell(forecast: forecast)
            return cell
        } else {
            return WeatherCell()
        }
    }
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTempLbl.text = "\(currentWeather.currentTemp)" //Comes in as double, converted to string so label can read it
        currentWeatherTypeLbl.text = currentWeather.weatherType
        locationLbl.text = currentWeather.cityName
        currentWeatherImg.image = UIImage(named: currentWeather.weatherType) //Since assets are named after weather type, we use it here
    }
}
