//
//  ResultCard.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct ResultCard: View {
    var body: some View {
        
        ZStack {
            CardBackground()
            
            VStack {
                CardLabel(title: "Result", caption: "Your Basal Metabolic Rate is")
                //MARK: RESULT
            }
        }.frame(width: 300, height: 600, alignment: .center)
        
        
    }
}

