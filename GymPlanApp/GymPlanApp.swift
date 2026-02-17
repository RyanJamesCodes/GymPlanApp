//
//  GymPlanApp.swift
//  GymPlanApp
//
//  Workout tracking app with 4-day split
//

import SwiftUI

@main
struct GymPlanApp: App {
    @StateObject private var weightStorage = WeightStorage.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(weightStorage)
        }
    }
}
