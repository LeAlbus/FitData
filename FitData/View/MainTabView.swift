//
//  MainTabView.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

enum Tab: Hashable {
    case diet, workout, home, sleep, water
}

struct MainTabView: View {
    
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            DietView()
                .tabItem{
                    Label("Food", systemImage: "fork.knife")
                }
                .tag(Tab.diet)
            
            WorkoutView(model: WorkoutModel(Sessions: [
                WorkoutSessionModel(code: "A", name: "Superior", icon: "figure.strengthtraining.traditional", color: .blue),
                WorkoutSessionModel(code: "B", name: "Torso", icon: "figure.core.training", color: .blue),   
                WorkoutSessionModel(code: "C", name: "Inferior", icon: "figure.cross.training", color: .blue),
                WorkoutSessionModel(code: "A", name: "Superior", icon: "figure.strengthtraining.traditional", color: .blue),
                WorkoutSessionModel(code: "B", name: "Torso", icon: "figure.core.training", color: .blue),   
                WorkoutSessionModel(code: "C", name: "Inferior", icon: "figure.cross.training", color: .blue)
            ]))
                .tabItem{
                    Label("Workout", systemImage: "figure.strengthtraining.traditional")
                }
                .tag(Tab.workout)
            
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
                .tag(Tab.home)
            
            SleepView()
                .tabItem{
                    Label("Sleep", systemImage: "bed.double.fill")
                }
                .tag(Tab.sleep)
            
            WaterView()
                .tabItem{
                    Label("Water", systemImage: "drop.fill")
                }
                .tag(Tab.water)
        }
    }
}
