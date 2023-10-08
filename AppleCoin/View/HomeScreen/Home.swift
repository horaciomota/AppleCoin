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
                    .font(.headline)
                    .foregroundColor(.gray)
                
                Text("$1339,99")
                    .font(.system(size: 45, weight: .bold))
            }
            .padding(.top)

            
            HStack(spacing:-4) {
            //WithDranw action button
            HStack(alignment: .center) {
                Image(systemName:"arrow.up.forward")
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(10)
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
                startPoint: .leading,
                endPoint: .bottom
            ))
            .cornerRadius(200)
            
            //Deposit action button
            HStack(alignment: .center) {
                Image(systemName:"arrow.down.left")
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(10)
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
                startPoint: .leading,
                endPoint: .bottom
            ))
            .cornerRadius(200)

        }
            Spacer()
            
            //Inclined card
            InclinedRectangleShape()
                 .frame(width: 382, height: 180)
                 .foregroundColor(.purple)
                 .cornerRadius(30)
         
            
            Spacer()

        }
        .padding(.horizontal)
        .modifier(BlackBackgroundModifier())
        
    }
}


struct InclinedRectangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // Linha do topo
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // Linha inclinada para cima
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // Linha da direita
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // Linha inferior
        path.closeSubpath()
        
        return path
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
