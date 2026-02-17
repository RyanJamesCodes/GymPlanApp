//
//  ExerciseData.swift
//  GymPlanApp
//

import Foundation

enum WorkoutDay: Int, CaseIterable {
    case day1 = 0  // Back & Biceps
    case day2 = 1  // Chest, Triceps & Shoulders
    case day3 = 2  // Same as Day 1
    case day4 = 3  // Same as Day 2
    
    var title: String {
        switch self {
        case .day1: return "Day 1: Back & Biceps"
        case .day2: return "Day 2: Chest, Triceps & Shoulders"
        case .day3: return "Day 3: Back & Biceps"
        case .day4: return "Day 4: Chest, Triceps & Shoulders"
        }
    }
    
    var exercises: [Exercise] {
        switch self {
        case .day1, .day3:
            return Self.backAndBicepExercises
        case .day2, .day4:
            return Self.chestTricepsShouldersExercises
        }
    }
    
    // Day 1 & 3: Back and Biceps
    private static let backAndBicepExercises: [Exercise] = [
        Exercise(name: "Barbell Row", sets: 4, reps: "8-10"),
        Exercise(name: "Lat Pulldown", sets: 4, reps: "10-12"),
        Exercise(name: "Seated Cable Row", sets: 3, reps: "10-12"),
        Exercise(name: "Barbell Curl", sets: 3, reps: "10-12"),
        Exercise(name: "Hammer Curl", sets: 3, reps: "10-12"),
        Exercise(name: "Face Pull", sets: 3, reps: "15")
    ]
    
    // Day 2 & 4: Chest, Triceps & Shoulders
    private static let chestTricepsShouldersExercises: [Exercise] = [
        Exercise(name: "Bench Press", sets: 4, reps: "8-10"),
        Exercise(name: "Incline Dumbbell Press", sets: 3, reps: "10-12"),
        Exercise(name: "Cable Fly", sets: 3, reps: "12-15"),
        Exercise(name: "Overhead Press", sets: 4, reps: "8-10"),
        Exercise(name: "Lateral Raise", sets: 3, reps: "12-15"),
        Exercise(name: "Tricep Pushdown", sets: 3, reps: "10-12"),
        Exercise(name: "Skull Crushers", sets: 3, reps: "10-12")
    ]
}
