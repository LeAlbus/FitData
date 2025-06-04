//
//  WorkoutView.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

struct WorkoutView: View {
    
    @StateObject var model: WorkoutModel
    @State private var showingNewSessionForm = false
    
    var body: some View {
        VStack (spacing: 40) {
            
            Text("Training Sessions")
                .font(.title)
            
            ScrollView {
                VStack (spacing:8) {
                    ForEach ($model.sessions) { workoutSession in
                        WorkoutSessionBannerView(workout: workoutSession.wrappedValue)
                    }
                    
                    addSessionButton
                }
            }
        }
        .padding(.horizontal)
        .sheet(isPresented: $showingNewSessionForm) {
            NavigationStack {
                WorkoutFormView(model: model)
            }
        }
    }
    
    private var addSessionButton: some View {
        Button {
            showingNewSessionForm = true
        } label: {
            HStack {
               Image(systemName: "plus.circle.fill")
                   .font(.system(size: 24))
               Text("New workout")
                   .font(.headline)
           }
           .foregroundColor(.accentColor)
           .padding()
           .frame(maxWidth: .infinity)
           .background(
               RoundedRectangle(cornerRadius: 12)
                   .stroke(Color.accentColor, lineWidth: 2)
           )
        }
    }
    
    private func addWorkoutSession() {
        let newSession = WorkoutSessionModel(
            code: "X",
            name: "New Training",
            icon: "figure.strengthtraining.traditional",
            color: .orange
        )
        model.addNewSession(newSession)
    }
}

#Preview {
    WorkoutView(model: WorkoutModel(
        sessions: [
            WorkoutSessionModel(code: "A", name: "Superior", icon: "figure.strengthtraining.traditional", color: .blue),
            WorkoutSessionModel(code: "B", name: "Torso", icon: "figure.core.training", color: .blue),   
            WorkoutSessionModel(code: "C", name: "Inferior", icon: "figure.cross.training", color: .blue),
            WorkoutSessionModel(code: "A", name: "Superior", icon: "figure.strengthtraining.traditional", color: .blue),
            WorkoutSessionModel(code: "B", name: "Torso", icon: "figure.core.training", color: .blue),   
            WorkoutSessionModel(code: "C", name: "Inferior", icon: "figure.cross.training", color: .blue)
        ]
    ))
}
