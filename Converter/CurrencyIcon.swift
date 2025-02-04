//
//  CurrencyIcon.swift
//  Converter
//
//  Created by Madaga on 04/02/2025.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let imageBackground: String
    let textBefore: String
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(imageBackground)
                .resizable()
                .scaledToFit()
            
            Text(textBefore)
                .padding(3)
                .font(.caption)
                .frame(maxWidth:.infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100 )
        .background(.brown)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct CurrencyIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(imageBackground: "copperpenny", textBefore: "Copper Penny")
    }
}
