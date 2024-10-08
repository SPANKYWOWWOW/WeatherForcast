//
//  ContentView.swift
//  WeatherForcast
//
//  Created by Pavan Davar on 9/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false,high: 60,low: 30)
            
            DayForecast(day: "Tue", isRainy: true,high: 70,low: 40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day:String
    let isRainy: Bool
    let high: Int
    let low: Int
    var iconName: String {
     if isRainy {
         return "cloud.rain.fill"
     }else{
         return "sun.max.fill"
     }
        
    }
    var iconColor: Color {
        if isRainy {
            return .blue
        }else{
            return .yellow
        }
    }
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)ºF")
                .font(Font.subheadline)
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)ºF")
                .font(Font.subheadline)
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
