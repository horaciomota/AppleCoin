//
//  SplashScreen.swift
//  AppleCoin
//
//  Created by Horacio Mota on 07/10/2023.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        
    NavigationView {
        VStack {
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
                    .fill(Color.clear) // Define a cor de preenchimento como transparente
                Color(hex: "313179")
                    .frame(width: 405,height: 519)
                    .cornerRadius(80)
                    .padding(.top, 100)
                Image("Vector-2")
                    .resizable()
                    .frame(width: 365, height: 561)
                    .padding(.bottom, 100)
                
                Image("estatua")
                    .resizable()
                    .frame(width: 365, height: 561)
                    .padding(.bottom, 100)
                
                Image("Vector")
                    .resizable()
                    .frame(width: 365, height: 561)
                    .padding(.bottom, 100)
                Image("Star")
                    .padding(.leading, 300)
                Image("Star")
                    .padding(.top, 300)
                    .padding(.trailing, 300)
                
                //Action button to go to HomeView
                
                NavigationLink(destination: Home()) {
                    ZStack {
                        Circle()
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [Color(hex: "F9D16B"), Color.white]),
                                startPoint: .leading,
                                endPoint: .bottom
                            ))
                            .frame(height: 150)
                            .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: 40)
                            )
                        
                        Image(systemName: "arrow.right")
                            .font(.system(size: 40))
                            .foregroundColor(.black)
                    }
                }
                .padding(.top, 500)

            }
            
        }
        .padding(.horizontal)
        .modifier(BlackBackgroundModifier())
        
    }
    .navigationBarHidden(true)
    .navigationBarItems(leading: EmptyView()) // Hide the back button
    .navigationBarBackButtonHidden(true)
        
       
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
