//
//  ContentView.swift
//  WeatherUi
//
//  Created by Misson Paudel on 10/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .top,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
           
            VStack{
                Text("Butwal,Nepal")
                    .font(.system(size: 34, weight: .medium, design: .default))
                     .foregroundColor(.white)
                    .padding(.top,40 )
                
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 140, height: 140)
                        .aspectRatio(contentMode: .fit )
                    
                    Text("25°")
                        .font(.system(size: 60, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                
                    Spacer()
            }
           
            HStack(spacing:20){
                
                WeatherDayView(dayOfWeek: "FRI",
                               imageName: "wind",
                               temperature: 20)
                
                WeatherDayView(dayOfWeek: "SAT",
                               imageName: "sun.max.fill",
                               temperature: 20)
                
                WeatherDayView(dayOfWeek: "SUN",
                               imageName: "cloud.sun.rain.fill",
                               temperature: 20)
                
                WeatherDayView(dayOfWeek: "MON",
                               imageName: "cloud.rain.fill",
                               temperature: 20)
                
                WeatherDayView(dayOfWeek: "TUE",
                               imageName: "cloud.sun.rain.fill",
                               temperature: 20)
                
            }.padding(.top,310)
            
        }
    }
}
    
    #Preview {
        ContentView()
    }


struct WeatherDayView: View {
    
    var dayOfWeek:   String
    var imageName:   String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fit)
            
            Text("\(temperature)°")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            
        }
    }
}

