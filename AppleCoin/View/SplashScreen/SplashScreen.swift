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
                    .font(.system(size: 48, weight: .regular))
                    .foregroundColor(.white)
                Text("Finance")
                    .font(.system(size: 48, weight: .regular))
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
            }
        }
       
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
