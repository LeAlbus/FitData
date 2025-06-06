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
            
            WorkoutView(model: WorkoutModel(sessions: []))
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
