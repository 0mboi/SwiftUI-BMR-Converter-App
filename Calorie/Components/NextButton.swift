//
//  NextButton.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct NextButton: View {
    
   @Binding var index: Int
    
    var body: some View {
        Image(systemName: "chevron.right.circle.fill")
            .font(.largeTitle)
            .foregroundColor(Color(.systemIndigo))
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
                moveToNextCard()
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

