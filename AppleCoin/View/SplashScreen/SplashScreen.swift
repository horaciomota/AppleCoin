//
//  SplashScreen.swift
//  AppleCoin
//
//  Created by Horacio Mota on 07/10/2023.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0

        scanner.scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

struct SplashScreen: View {
    var body: some View {

        ZStack {
            //this is the best way to start on a black bg app
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .center) {
                Text("Manage Your")
                    .font(.system(size: 48, weight: .light))
                    .foregroundColor(.white)
                    .padding(.bottom, 0)
                ZStack {
                    //Curstom foregtound collor
                    Text("Finance")
                        .font(.system(size: 48, weight: .regular))
                        .foregroundColor(.clear) //Add transparent to the overlay
                        .overlay(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(hex: "F9D16B"), Color.white]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            .mask(Text("Finance")
                                .font(.system(size: 48, weight: .regular))
                            )
                        )
                        .fontWeight(.bold)
                }
                
                Spacer()
            }
            //rectangle + estatue + details
            ZStack {
                Rectangle()
                    Color(hex: "313179")
                    .frame(width: 405,height: 519)
                    .cornerRadius(80)
                    .padding(.top, 100)
                Image("Vector-2")
                    .resizable()
                    .frame(width: 365, height: 561)
                    .padding(.bottom, 100)
                Image("Vector")
                    .resizable()
                    .frame(width: 365, height: 561)
                    .padding(.bottom, 100)
                Image("estatua")
                    .resizable()
                    .frame(width: 365, height: 561)
                    .padding(.bottom, 100)
                Image("Star")
                    .padding(.leading, 300)
                Image("Star")
                    .padding(.top, 300)
                    .padding(.trailing, 300)
                
                //Action button to go to HomeView
                ZStack {
                    Circle()
                    // From Yello (F9D16B) to white
                        .fill(LinearGradient(
                            gradient: Gradient(colors: [Color(hex: "F9D16B"), Color.white]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        )
                        .frame(height: 150)
                        .padding(.top, 500)
                        .overlay(
                            Circle()
                                .stroke(Color.black, lineWidth: 40)
                                .padding(.top, 500)
                        )
                    
                    Image(systemName: "arrow.right")
                        .font(.system(size: 40))
                        .padding(.top, 500)
                }


            }
            .padding(.top, 150)
        }
        
       
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
