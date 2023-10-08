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
            Text("Your Balance")
                .font(.headline)
                .foregroundColor(.gray)
                .padding(.top, 10)
            
            
            //Inclined card
            ZStack {//Controller for all cards
                
                //First Card
                VStack {
                    ZStack {
                        CustomCardShape()
                            .frame(width: 382, height: 200)
                            .foregroundColor(.gray)
                            .cornerRadius(20)
                        
                        //Card custom mask
                        Image("CardMask")
                            .opacity(0.09)
                            .colorInvert()
                        
                        Image("CardLogo")
                            .padding(.top, -60)
                            .padding(.trailing, 300)
                        
                        //Curency top right
                        Text("USD")
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.top, -70)
                            .padding(.leading, 300)
                        
                        VStack(alignment: .leading) {
                            Text("Horacio Mota")
                                .font(.system(size: 18, weight: .semibold))
                            
                            Text("5591 0005 0000 0000")
                                .font(.system(size: 22, weight: .bold))
                        }
                        .padding(.top, 100)
                        .padding(.trailing, 100)
                        
                    }
                }
                .padding(.bottom, 100)

                
                //Seccound Card
                VStack {
                    ZStack {
                        CustomCardShape()
                            .frame(width: 382, height: 200)
                            .foregroundColor(.purple)
                            .cornerRadius(20)
                        
                        //Card custom mask
                        Image("CardMask")
                            .opacity(0.09)
                            .colorInvert()
                        
                        Image("CardLogo")
                            .padding(.top, -60)
                            .padding(.trailing, 300)
                        
                        //Curency top right
                        Text("EUR")
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.top, -70)
                            .padding(.leading, 300)
                        
                        VStack(alignment: .leading) {
                            Text("Horacio Mota")
                                .font(.system(size: 18, weight: .semibold))
                            
                            Text("5591 0005 0000 0000")
                                .font(.system(size: 22, weight: .bold))
                        }
                        .padding(.top, 100)
                        .padding(.trailing, 100)
                        
                    }
                }
                
            } //Controller for all cards
            
            //Transactions
            
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
