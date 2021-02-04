//
//  CalorieApp.swift
//  Calorie
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

@main
struct CalorieApp: App {
    
    @StateObject var model: CalorieModel = CalorieModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
