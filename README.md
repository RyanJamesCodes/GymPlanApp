# Gym Plan App

A SwiftUI iPhone app for tracking your 4-day workout split with saved weights per exercise.

## Workout Schedule

| Day | Muscle Groups | Exercises |
|-----|---------------|-----------|
| Day 1 | Back & Biceps | Barbell Row, Lat Pulldown, Cable Row, Barbell Curl, Hammer Curl, Face Pull |
| Day 2 | Chest, Triceps & Shoulders | Bench Press, Incline DB Press, Cable Fly, Overhead Press, Lateral Raise, Tricep Pushdown, Skull Crushers |
| Day 3 | Back & Biceps | Same as Day 1 |
| Day 4 | Chest, Triceps & Shoulders | Same as Day 2 |

## Features

- **4-day split** with Day 1/3 and Day 2/4 sharing exercises
- **Exercise list** per day with sets and reps
- **Exercise detail** when you tap: shows sets, reps, and weight input
- **Weight persistence** — your weight saves for the next session per exercise

## Setup

### Option A: Create New Xcode Project (Recommended)

1. Open Xcode and create a new project: **File → New → Project**
2. Choose **iOS → App** and click Next
3. Set:
   - Product Name: `GymPlanApp`
   - Team: Your team
   - Organization Identifier: e.g. `com.yourname`
   - Interface: **SwiftUI**
   - Language: **Swift**
   - Uncheck "Include Tests" if you prefer
4. Save the project in this folder (or move the generated project here)
5. In Xcode, remove the default `ContentView.swift` and any generated `*App.swift`
6. Drag the entire `GymPlanApp` folder (containing all `.swift` files, `Data/`, `Models/`, `Views/`, `Services/`) into the Xcode project navigator
7. Ensure **Copy items if needed** is unchecked and your app target is checked
8. Rename the default app file to match (or replace it with `GymPlanApp.swift` as the `@main` entry point)
9. Build and run (⌘R)

### Option B: Use Provided Xcode Project

If an `GymPlanApp.xcodeproj` is present, open it in Xcode and build (⌘R).

## Project Structure

```
GymPlanApp/
├── GymPlanApp.swift          # App entry point
├── Models/
│   └── Exercise.swift        # Exercise model
├── Data/
│   └── ExerciseData.swift    # Day 1–4 exercises
├── Services/
│   └── WeightStorage.swift   # Persists weight per exercise
├── Views/
│   ├── ContentView.swift     # Day picker + workout list
│   ├── WorkoutDayView.swift  # Exercise list per day
│   └── ExerciseDetailView.swift  # Sets, reps, weight input
└── Assets.xcassets
```

## Customizing Exercises

Edit `GymPlanApp/Data/ExerciseData.swift` to change exercises for each day. The `backAndBicepExercises` and `chestTricepsShouldersExercises` arrays define the workouts for Days 1/3 and 2/4 respectively.
