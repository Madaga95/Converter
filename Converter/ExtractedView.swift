//
//  ExtractedView.swift
//  Converter
//
//  Created by Madaga on 27/01/2025.
//

import SwiftUI

struct ExtractedView: View {
    
    let leftImage: String
    let text: String
    let rightImage: String
    
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExtractedView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedView(leftImage: "goldpiece", text: "1 Gold piece = 4 Gold Pennies", rightImage: "goldpenny")
    }
}
