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
           
            HStack{
                VStack{
                    Text("Fri")
                        .foregroundColor(.white)
                    
                    Image(systemName: "wind")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("25°")
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    
                }
              
                VStack{
                    Text("Sat")
                        .foregroundColor(.white)
                    
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("25°")
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    
                }

                
                VStack{
                    Text("Sun")
                        .foregroundColor(.white)
                    
                    Image(systemName: "cloud.drizzle.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("25°")
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    
                }
               
                
                VStack{
                    Text("Mon")
                        .foregroundColor(.white)
                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("25°")
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    
                }
                
                
                VStack{
                    Text("Tue")
                        .foregroundColor(.white)
                    
                    Image(systemName: "cloud.heavyrain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("25°")
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
    
            }
            .padding()
        }
    }
}
    
    #Preview {
        ContentView()
    }

