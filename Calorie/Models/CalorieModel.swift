//
//  CalorieModel.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

class CalorieModel: ObservableObject {
    @Published var gender: Gender = Gender.female
    @Published var age: Double = 36
    @Published var height: Double = 56
    @Published var weight: Double = 180
    @Published var resultBMR: Double = 0
    
    func calculateBMR() {
        if gender == Gender.male {
            //MALE
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
            
        } else {
            //FEMALE
            
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
            
        }
    }
}
