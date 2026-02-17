//
//  ContentView.swift
//  GymPlanApp
//

import SwiftUI

struct ContentView: View {
    @State private var selectedDay: WorkoutDay = .day1
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Picker("Workout Day", selection: $selectedDay) {
                    ForEach(WorkoutDay.allCases, id: \.rawValue) { day in
                        Text("Day \(day.rawValue + 1)").tag(day)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                WorkoutDayView(day: selectedDay)
                    .transition(.opacity)
            }
            .navigationTitle("Gym Plan")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
