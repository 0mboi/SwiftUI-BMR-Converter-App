//
//  GenderCard.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct GenderCard: View {
    
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        
        ZStack {
            CardBackground()
            
            VStack {
                
                CardLabel(title: "Gender", caption: "Select Your Gender")
                
                
                //MARK: PICKER          binding var - will set picker to choice
                Picker("Gender", selection: $model.gender) {
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
            
                }.pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
                
                
            }
        }.frame(width: 300, height: 600, alignment: .center)
        
    }
}

