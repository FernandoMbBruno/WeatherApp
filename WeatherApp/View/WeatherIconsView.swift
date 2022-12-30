//
//  WeatherIconsView.swift
//  WeatherApp
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 30/12/22.
//

import SwiftUI

struct WeatherIconsView: View {
    var weatherModel: Weather
    var body: some View {
        VStack {
            switch weatherModel.weather[0].main {
            case "Clear sky":
                Icons.clearSky
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            case "Few Clouds":
                Icons.fewClouds
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
                
            case "Clouds":
                Icons.clouds
                    .resizable()
                    .frame(width: 70, height: 60)
                    .foregroundColor(Theme.labelDark)
                
            case "Scattered clouds":
                Icons.fewClouds
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            case "Broken clouds":
                Icons.brokenClouds
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            case "Shower rain":
                Icons.rain
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            case "Rain":
                Icons.rain
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            case "Thunderstorm":
                Icons.thunderStorm
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            case "Snow":
                Icons.snow
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            case "Mist":
                Icons.mist
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            default:
                Icons.mist
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Theme.labelDark)
            }
        }
    }
}

struct WeatherIconsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(weatherData: modelWeatherMock)
    }
}
