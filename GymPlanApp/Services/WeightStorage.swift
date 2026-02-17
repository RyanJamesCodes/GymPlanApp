//
//  WeightStorage.swift
//  GymPlanApp
//
//  Persists weight for each exercise to load in next session
//

import Foundation

final class WeightStorage: ObservableObject {
    static let shared = WeightStorage()
    private let defaults = UserDefaults.standard
    
    /// Increment to notify views that weights changed (list shows last weight)
    @Published private(set) var updateTrigger = 0
    
    private init() {}
    
    func getWeight(for exercise: Exercise) -> String {
        defaults.string(forKey: exercise.storageKey) ?? ""
    }
    
    func saveWeight(_ weight: String, for exercise: Exercise) {
        defaults.set(weight, forKey: exercise.storageKey)
        updateTrigger += 1
    }
}
