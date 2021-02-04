//
//  TitleCard.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct TitleCard: View {
    
    
    
    var body: some View {
        
        
        ZStack {
                CardBackground()
                CardLabel(title: "Calorie", caption: "BMR Calculator")
            
        }.frame(width: 300, height: 600, alignment: .center)
    }
}


