//
//  ContentView.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var activeCardIndex: Int = 0
    
    var body: some View {
        
        
        
        VStack{
            Spacer()
            
            if activeCardIndex == 0 {
                TitleCard()
            }
            
            if activeCardIndex == 1 {
                GenderCard()
            }
            
            if activeCardIndex == 2 {
                AgeCard()
            }
            
            if activeCardIndex == 3 {
                HeightCard()
            }
            
            if activeCardIndex == 4 {
                WeightCard()
            }
            
            if activeCardIndex == 5 {
                ResultCard()
            }
            
            
            
            NextButton()
                .onTapGesture {
                    moveToNextCard()
                }
        }
        
    }
    
    func moveToNextCard() {
        
        withAnimation {
            
            if activeCardIndex <= 4 {
            activeCardIndex += 1
            } else {
            activeCardIndex = 0
            }
        }
        
    }
}


