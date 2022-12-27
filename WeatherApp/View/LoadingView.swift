//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 26/12/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Theme.backgroundDark
                .ignoresSafeArea()
            ProgressView()
                .tint(.white)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
