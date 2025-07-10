//
//  weatherButton.swift
//  WeatherUi
//
//  Created by Misson Paudel on 10/07/2025.
//
import SwiftUI

struct weatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
            Text("Change Day Time")
                .frame(width: 250, height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size:20 ,
                              weight: .bold,
                              design: .default))
                .cornerRadius(10)
        }
    }

