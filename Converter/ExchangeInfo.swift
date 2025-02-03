//
//  ExchangeInfo.swift
//  Converter
//
//  Created by Madaga on 26/01/2025.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .tracking(3)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                ExtractedView(
                    leftImage: "goldpiece",
                    text: "1 Gold piece = 4 Gold Pennies",
                    rightImage: "goldpenny")
                ExtractedView(
                    leftImage: "goldpenny",
                    text: "1 Gold penny = 4 Silver piece",
                    rightImage: "silverpiece")
                ExtractedView(
                    leftImage: "goldpiece",
                    text: "1 Gold piece = 4 Gold Pennies",
                    rightImage: "goldpenny")
                ExtractedView(
                    leftImage: "goldpiece",
                    text: "1 Gold piece = 4 Gold Pennies",
                    rightImage: "goldpenny")
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
    }
}
