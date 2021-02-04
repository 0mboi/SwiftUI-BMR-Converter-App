//
//  WeightCard.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct WeightCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            CardBackground()
            
            VStack {
                CardLabel(title: "Weight", caption: "Select Your Weight")
                //MARK: SLIDER
                
                SliderValue(value: model.weight)
                Slider(value: $model.weight, in: 1...250, step: 1.0)
                    .frame(width: 200)
                
                
            }
        }.frame(width: 300, height: 600, alignment: .center)
        
        
    }
}


