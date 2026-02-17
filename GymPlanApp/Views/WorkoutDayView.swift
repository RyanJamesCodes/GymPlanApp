//
//  WorkoutDayView.swift
//  GymPlanApp
//

import SwiftUI

struct WorkoutDayView: View {
    let day: WorkoutDay
    
    var body: some View {
        List(day.exercises) { exercise in
            NavigationLink(value: exercise) {
                ExerciseRowView(exercise: exercise)
            }
        }
        .listStyle(.insetGrouped)
        .navigationDestination(for: Exercise.self) { exercise in
            ExerciseDetailView(exercise: exercise)
        }
    }
}

struct ExerciseRowView: View {
    let exercise: Exercise
    @EnvironmentObject private var weightStorage: WeightStorage
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(exercise.name)
                    .font(.headline)
                Text("\(exercise.sets) sets × \(exercise.reps) reps")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            if let lastWeight = weightStorage.getWeight(for: exercise), !lastWeight.isEmpty {
                Text("\(lastWeight) lbs")
                    .font(.subheadline)
                    .foregroundStyle(.blue)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    NavigationStack {
        WorkoutDayView(day: .day1)
            .environmentObject(WeightStorage.shared)
    }
}
