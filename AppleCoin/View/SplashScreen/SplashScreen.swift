//
//  SplashScreen.swift
//  AppleCoin
//
//  Created by Horacio Mota on 07/10/2023.
//

import SwiftUI

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
                Text("Finance")
                    .font(.system(size: 48, weight: .regular))
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                //rectangle + estatue
                ZStack {
                    Rectangle()
                        .frame(width: 405,height: 519)
                        .foregroundColor(.purple)
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
                }
                
                Spacer()

            }
        }
        
       
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
