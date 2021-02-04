//
//  AgeCard.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct AgeCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            CardBackground()
            
            VStack {
                CardLabel(title: "Age", caption: "Select Your Age")
                
                //MARK: SLIDER
                SliderValue(value: model.age)
                Slider(value: $model.age, in: 15...99, step: 1.0)
                    .frame(width: 200)
                
            }
        }.frame(width: 300, height: 600, alignment: .center)
        
    }
    
}


