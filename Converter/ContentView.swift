//
//  ContentView.swift
//  Converter
//
//  Created by Madaga on 24/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var righttAmount = ""
    var body: some View {
        ZStack{
            // Background image
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .sheet(isPresented: $showExchangeInfo){
                    ExchangeInfo()
                }
            VStack{
                // Prancing pony image
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                // Conversion section
                
                HStack{
                    // left conversion section
                    VStack{
                        // Currency
                        HStack{
                            // Currency image
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency text
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                        }
                        .padding(.bottom, -5)

                        // text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            
                    }
                    
                    // equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    // right conversion section
                    VStack{
                        // Currency
                        HStack{
                            // Currency text
                            Text("Gold piece")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            // Currency image
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        // text field
                        TextField("Amount", text: $righttAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            
                        
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(Capsule())
                
                Spacer()
                
                // info button
                HStack{
                    
                    Spacer()
                    
                    Button {
                        // Action à effectuer quand le bouton est pressé
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                }
                .padding(.trailing)
                
            }
//            .border(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
