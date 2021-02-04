//
//  HeightCard.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct HeightCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            CardBackground()
            
            VStack {
                CardLabel(title: "Height", caption: "Select Your Height")
                //MARK: SLIDER
                
                SliderValue(value: model.height)
                Slider(value: $model.height, in: 1...250, step: 1.0)
                    .frame(width: 200)
                
            }
        }.frame(width: 300, height: 600, alignment: .center)
        
    
    }
}


