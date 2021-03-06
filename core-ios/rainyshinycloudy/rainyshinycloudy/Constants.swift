//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Ryan Carty on 7/23/17.
//  Copyright © 2017 Ryan Carty. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "258567de18f8dc0ee0e8369907fe75ce"

typealias DownloadComplete = () -> () //Tells our function when we are complete (finished downloading)

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-34\(LONGITUDE)123\(APP_ID)\(API_KEY)"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=-36&long=123&cnt=10&mode=json&appid=258567de18f8dc0ee0e8369907fe75ce"

//let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=42a1771a0b787bf12e734ada0cfc80cb"
//let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"
