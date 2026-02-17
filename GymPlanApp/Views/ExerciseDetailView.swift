//
//  ExerciseDetailView.swift
//  GymPlanApp
//

import SwiftUI

struct ExerciseDetailView: View {
    let exercise: Exercise
    @EnvironmentObject private var weightStorage: WeightStorage
    @State private var weight: String = ""
    @FocusState private var weightFocused: Bool
    
    var body: some View {
        Form {
            Section {
                LabeledContent("Sets", value: "\(exercise.sets)")
                LabeledContent("Reps", value: exercise.reps)
            } header: {
                Text("Target")
            }
            
            Section {
                HStack {
                    TextField("Weight (lbs)", text: $weight)
                        .keyboardType(.decimalPad)
                        .focused($weightFocused)
                    
                    Button("Save") {
                        weightStorage.saveWeight(weight, for: exercise)
                        weightFocused = false
                    }
                    .disabled(weight.isEmpty)
                }
            } header: {
                Text("Weight")
            } footer: {
                Text("Your weight will be saved for the next session.")
            }
        }
        .navigationTitle(exercise.name)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            weight = weightStorage.getWeight(for: exercise)
        }
    }
}

#Preview {
    NavigationStack {
        ExerciseDetailView(exercise: Exercise(name: "Bench Press", sets: 4, reps: "8-10"))
            .environmentObject(WeightStorage.shared)
    }
}
