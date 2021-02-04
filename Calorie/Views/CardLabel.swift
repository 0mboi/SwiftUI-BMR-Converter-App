//
//  CardLabel.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct CardLabel: View {
    
    var title: String
    var caption: String
    
    var body: some View {
        
        VStack {
            
       
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(.systemIndigo))
            .padding(.bottom, 10)
        
        
        Text(caption)
            .font(.caption)
            .foregroundColor(Color(.systemGray))
            .padding(.bottom, 30)
            
        }
    }
}


