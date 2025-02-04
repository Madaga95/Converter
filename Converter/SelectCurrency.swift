//
//  SelectCurrency.swift
//  Converter
//
//  Created by Madaga on 04/02/2025.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency your are starting with:")
                    .fontWeight(.bold)
                
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]){
                    ForEach(0..<5){_ in
                        CurrencyIcon(imageBackground: "copperpenny", textBefore: "Copper Penny")
                    }
                }

                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                    
                
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency()
    }
}
