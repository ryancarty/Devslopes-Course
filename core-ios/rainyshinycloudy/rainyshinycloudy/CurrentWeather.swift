//
//  CurrentWeather.swift
//  rainyshinycloudy
//
//  Created by Ryan Carty on 7/23/17.
//  Copyright © 2017 Ryan Carty. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    //Data encapsulation/hiding: limits who can access these variables
    //We're making it so only our download function and in this file can these variables be accessed
    
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    //To prevent if the variable has no info
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long //Date style
        dateFormatter.timeStyle = .none //Time set to none
        let currentDate = dateFormatter.string(from: Date()) //Get date
        self._date = "Today, \(currentDate)" //Set to variable
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //initialize url to tell alamofire where to download form
        //let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)! Dont need?
        //Start alamofire
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in //Get request and telling it what format
            //every request has a response and every response has a result
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String { //Finding name key and passing through as string
                    self._cityName = name.capitalized //Asign to variable just in case, Make sure its capitilized just in case
                    print(self._cityName)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] { //Dictionary of dictionarys with key as string and value as any object
                    
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                    
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                        self._currentTemp = kelvinToFarenheit
                        print(self._currentTemp)
                    }
                }
            }
            //Dont forget to go to info.plist and add the App Transport Security Settings - Allow Arbitrary Loads - YES to allow non secure (non HTTPS) URLs
            completed()
        }
    }
}
