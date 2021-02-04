//
//  CalculateButton.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct CalculateButton: View {
    
    @EnvironmentObject var model: CalorieModel
    
    @Binding var index: Int
    
    var body: some View {
        Text("Calculate")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemIndigo))
            .cornerRadius(20)
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
                model.calculateBMR()
                moveToNextCard()
                //important Order 
            }
    }
    
    func moveToNextCard() {
        
        withAnimation {
            
            if index <= 4 {
            index += 1
            } else {
            index = 0
            }
        }
        
    }
}


