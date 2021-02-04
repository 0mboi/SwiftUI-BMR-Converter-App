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
}
