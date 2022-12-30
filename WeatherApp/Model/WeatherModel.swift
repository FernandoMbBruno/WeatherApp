//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 26/12/22.
//

import Foundation

struct Weather: Codable {
    var coord: CoordModel
    var weather: [WeatherModel]
    var base: String
    var main: MainModel
    var wind: WindModel
    var clouds: CloudsModel
    var dt: Double
    var timezone: Double
    var id: Int
    var name: String
    var cod: Int
}

struct CoordModel: Codable  {
    var lat: Double
    var lon: Double
}

struct WeatherModel: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

struct MainModel: Codable  {
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Double
    var humidity: Double
}

struct WindModel: Codable  {
    var speed: Double
    var deg: Int
}

struct CloudsModel: Codable  {
    var all: Int
}

struct SysModel: Codable  {
    var type: Int
    var id: Int
    var country: String
    var sunrise: Double
    var sunset: Double
}


