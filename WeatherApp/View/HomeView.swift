//
//  HomeView.swift
//  WeatherApp
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 26/12/22.
//

import SwiftUI


struct HomeView: View {
    var weatherData: Weather
    var weatherModel = WeatherViewModel()
    
    var body: some View {
        ZStack {
            Theme.backgroundLight
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text(weatherData.name)
                        .font(.body)
                        .bold()
                        .foregroundColor(Theme.labelDark)
                    
                    Text("Now")
                        .bold()
                        .font(.system(size: 12))
                        .foregroundColor(Theme.labelDark)
                    
                }
    
                Spacer()
                
                VStack(spacing: 10) {
                    WeatherIconsView(weatherModel: weatherData)
                    
                    Text(weatherModel.formatTemp(data: weatherData.main.temp) + "°C")
                        .font(.system(size: 62))
                        .multilineTextAlignment(.center)
                        .bold()
                        .foregroundColor(Theme.labelDark)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text(weatherData.weather[0].description)
                        .bold()
                        .foregroundColor(Theme.labelDark)

                }
                
                VStack {
                    Text("Wind")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(Theme.labelDark)
                    
                    HStack {
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .foregroundColor(Theme.labelDark)
                        
                        Text(weatherModel.doubleToString(double: weatherData.wind.speed) + "m/s")
                            .font(.system(size: 15))
                            .bold()
                            .foregroundColor(Theme.labelDark)
                    }
                }
                .padding(.top, 30)
                
                Spacer()
                
                VStack {
                    HStack {
                        Text("Tue, Apr 14")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("11°, 0°")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 50)
                   
                    HStack {
                        Text("Wed, Apr 14")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                        Text("16°, 2°")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 50)
                    
                    HStack {
                        Text("Thu, Apr 14")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                        Text("23°, 8°")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 50)
                    
                    HStack {
                        Text("Fri, Apr 14")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                        Text("26°, 8°")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 50)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(weatherData: modelWeatherMock)
    }
}
