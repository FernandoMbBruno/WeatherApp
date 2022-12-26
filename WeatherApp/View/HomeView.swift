//
//  HomeView.swift
//  WeatherApp
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 26/12/22.
//

import SwiftUI


struct HomeView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        ZStack {
            Theme.backgroundLight
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text("Consolacao")
                        .font(.body)
                        .bold()
                        .foregroundColor(Theme.labelDark)
                    
                    Text("Now")
                        .bold()
                        .font(.system(size: 12))
                        .foregroundColor(Theme.labelDark)
                    
                }
    
                Spacer()
                
                VStack(spacing: 25) {
                    Image(systemName: "cloud.rain")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(Theme.labelDark)
                    
                    Text("26°")
                        .font(.system(size: 62))
                        .bold()
                        .foregroundColor(Theme.labelDark)
                    
                    Text("Mostly cloudy")
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
                        
                        Text("4m/s")
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
                        Text("Tue, Apr 14")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("16°, 2°")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 50)
                    
                    HStack {
                        Text("Tue, Apr 14")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("23°, 8°")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 50)
                    
                    HStack {
                        Text("Tue, Apr 14")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .frame(maxWidth: .infinity, alignment: .center)
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
        HomeView()
    }
}
