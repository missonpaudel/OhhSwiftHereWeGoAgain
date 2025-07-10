//
//  ContentView.swift
//  WeatherUi
//
//  Created by Misson Paudel on 10/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack{
                currentStatusView(cityName: "Butwal, Nepal",
                                  weatherIconName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                  temperature: 23)
                
               
                
              
                
                
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
                    
                }.padding(.bottom,80)
                
                Button{
                    isNight.toggle()
                }label: {
                    weatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
            }
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


struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
    LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                               isNight ? .gray : Color("lightBlue")]),
                       startPoint: .top,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct currentStatusView: View {
    var cityName: String
    var weatherIconName: String
    var temperature: Int
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 34, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top,40 )
        
        VStack(spacing: 10){
            Image(systemName: weatherIconName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 140, height: 140)
                .aspectRatio(contentMode: .fit )
            
            Text("\(temperature)°")
                .font(.system(size: 60, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 35)
    }
    
}
