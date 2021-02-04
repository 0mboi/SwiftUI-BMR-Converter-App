//
//  ResultCard.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            CardBackground()
            
            VStack {
                CardLabel(title: "Result", caption: "Your Basal Metabolic Rate is")
                                    //conversion formula 
                Text(String(format: "%0.0f", model.resultBMR))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemIndigo))
                
                Text("Calories/Day")
                    .font(.caption)
                    .padding(.top, 20)
                    .foregroundColor(Color(.systemGray))
                
            }
        }.frame(width: 300, height: 600, alignment: .center)
        
        
    }
}

