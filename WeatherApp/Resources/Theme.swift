//
//  Theme.swift
//  WeatherApp
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 26/12/22.
//

import Foundation
import SwiftUI

struct Theme {
    static let backgroundLight = Color("Background_Light")
    static let backgroundDark = Color("Background_Dark")
    static let labelDark = Color("Label_Dark")
    static let labelLight = Color("Label_Light")
}

struct Icons {
    static let clearSky = Image(systemName: "sun.max")
    static let fewClouds = Image(systemName: "cloud.sun")
    static let clouds = Image(systemName: "cloud")
    static let brokenClouds = Image(systemName: "cloud")
    static let rain = Image(systemName: "cloud.rain")
    static let thunderStorm = Image(systemName: "cloud.bolt.rain")
    static let snow = Image(systemName: "cloud.snow")
    static let mist = Image(systemName: "cloud.fog")
}


