//
//  Exercise.swift
//  GymPlanApp
//

import Foundation

struct Exercise: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let sets: Int
    let reps: String  // e.g. "8-12" or "10"
    
    /// Key used to store/retrieve last weight in UserDefaults
    var storageKey: String { "weight_\(name.replacingOccurrences(of: " ", with: "_"))" }
    
    func hash(into hasher: inout Hasher) { hasher.combine(name) }
    static func == (lhs: Exercise, rhs: Exercise) -> Bool { lhs.name == rhs.name }
}
