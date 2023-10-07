//
//  Home.swift
//  AppleCoin
//
//  Created by Horacio Mota on 07/10/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {

        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "list.bullet")
                    .font(.system(size: 24))
                
                Spacer()
                
                Image(systemName: "bell.fill")
                    .font(.system(size: 24))
            }
            
            VStack(alignment: .leading) {
                Text("Your Balance")
                    .font(.title)
                
                Text("$1339,99")
                    .font(.title3)
            }
            
            HStack(spacing:-4) {
            //WithDranw action button
            HStack(alignment: .center) {
                Image(systemName:"arrow.up.forward")
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(100)
                
                Text("Withdraw")
                    .font(.title3)
                    .foregroundColor(.black)
               
            Spacer()

                
            }
            .padding()
            .background(LinearGradient(
                gradient: Gradient(colors: [Color(hex: "F9D16B"), Color.white]),
                startPoint: .top,
                endPoint: .bottom
            ))
            .cornerRadius(200)
            
            //Deposit action button
            HStack(alignment: .center) {
                Image(systemName:"arrow.down.left")
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(100)

                
                Text("Deposit")
                    .font(.title3)
                    .foregroundColor(.black)
                
                Spacer()

            }
            .padding()
            .background(LinearGradient(
                gradient: Gradient(colors: [Color(hex: "F9D16B"), Color.white]),
                startPoint: .top,
                endPoint: .bottom
            ))
            .cornerRadius(200)

        }

            
            Spacer()

        }
        .padding(.horizontal)
        .modifier(BlackBackgroundModifier())
        
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
