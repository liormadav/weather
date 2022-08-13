//
//  ContentView.swift
//  weather
//
//  Created by lior madav on 12/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Rehovot, IL")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("78°")
                        .font(.system(size: 76, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack{
                    WeatherDayView(dayOfWeek: "TUE", image: "sun.max.fill", temp: 87)
                }
                .padding(.bottom,120)
//  the orders of the modifiers matter, thats mean that if i'll do .foregroundColor(Color.red) and then .frame(width: 200, height: 200) the frame won't be filled in red(only the text will be) because I wrote the background before the frame
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var image: String
    var temp: Int
    
    var body: some View {
        VStack(){
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temp)°")
                .font(.system(size: 27, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
