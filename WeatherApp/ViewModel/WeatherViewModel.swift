//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 26/12/22.
//

import Foundation
import CoreLocation

class WeatherViewModel: ObservableObject {
    
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> Weather {
        guard let url = URL(string:"https://api.openweathermap.org/data/2.5/weather?appid=4896240256ac437c5665495d9a5a212a&lat=\(latitude)&lon=\(longitude)&units=metric" ) else {
            fatalError()
        }
        
        let urlRequest = URLRequest(url: url)
        let (data,response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError() }
        
        let decodedData = try JSONDecoder().decode(Weather.self, from: data)
        
        return decodedData
    }
    
    func doubleToString(double: Double) -> String {
        return String(double)
    }
    
    func formatTemp(data: Double) -> String {
        let data = data
        let dataFormated = String(format: "%.0f", data)
        
        return dataFormated
    }
}

