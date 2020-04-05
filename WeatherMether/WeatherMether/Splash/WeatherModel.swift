//
//  WeatherModel.swift
//  WeatherMether
//
//  Created by amirhosseinpy on 1/15/1399 AP.
//  Copyright © 1399 Sepitmaan. All rights reserved.
//

import Foundation

// MARK: - WeatherModel
struct WeatherModel: Codable {
    var current: Current?
    var hourly, daily: [Forcast]?
}

// MARK: - Current
struct Current: Codable {
    var time: Int?
    var city: City?
    var stats: CurrentStats?
}

// MARK: - City
struct City: Codable {
    var id: Int?
    var name, country: String?
    var timezone, sunrise, sunset: Int?
    var lat, lng: Double?
}

// MARK: - CurrentStats
struct CurrentStats: Codable {
    var condition: Condition?
    var iconID: IconID?
    var temp: Double?
    var feelsLike, tempMin, tempMax, pressure: Int?
    var humidity, cloudiness: Int?
    var windSpeed: Double?
    var windDegree, visibility: Int?
    var uv: String?
    var rain3H, snow3H: Int?

    enum CodingKeys: String, CodingKey {
        case condition
        case iconID = "iconId"
        case temp, feelsLike, tempMin, tempMax, pressure, humidity, cloudiness, windSpeed, windDegree, visibility, uv
        case rain3H = "rain3h"
        case snow3H = "snow3h"
    }
}

enum Condition: String, Codable {
    case clear = "CLEAR"
    case clouds = "CLOUDS"
    case rain = "RAIN"
}

enum IconID: String, Codable {
    case clearSkyDay = "01d"
    case clearSkyNight = "01n"
    case fewCloudsDay = "02d"
    case fewCloudsNight = "02n"
    case scatteredCloudsDay = "03d"
    case scatteredCloudsNight = "03n"
    case brokenCloudsDay = "04d"
    case brokenCloudsNight = "04n"
    case showerRainDay = "09d"
    case showerRainNight = "09n"
    case rainDay = "10d"
    case rainNight = "10n"
    case thunderstormDay = "11d"
    case thunderstormNight = "11n"
    case snowDay = "13d"
    case snowNight = "13n"
    case mistDay = "50d"
    case mistNight = "50n"
}

// MARK: - Forcast
struct Forcast: Codable {
    var time: Int?
    var stats: ForcastStats?
}

// MARK: - DailyStats
struct ForcastStats: Codable {
    var status: Condition?
    var iconID: IconID?
    var temp, tempMin, tempMax: Double?

    enum CodingKeys: String, CodingKey {
        case status
        case iconID = "iconId"
        case temp, tempMin, tempMax
    }
}
