//
//  WorkoutView.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

struct WorkoutView: View {
    
    var model: WorkoutModel
    
    var body: some View {
        VStack (spacing: 40) {
            
            Text("Training Sessions")
                .font(.title)
            
            ScrollView {
                ForEach (model.Sessions) { workoutSession in
                    WorkoutSessionBannerView(workout: workoutSession)
                }
            }
        }
        .padding(.horizontal)
        .padding(.top, 16)
    }
}

#Preview {
    WorkoutView(model: WorkoutModel(Sessions: [
        WorkoutSessionModel(code: "A", name: "Superior", icon: "figure.strengthtraining.traditional", color: .blue),
        WorkoutSessionModel(code: "B", name: "Torso", icon: "figure.core.training", color: .blue),   
        WorkoutSessionModel(code: "C", name: "Inferior", icon: "figure.cross.training", color: .blue),
        WorkoutSessionModel(code: "A", name: "Superior", icon: "figure.strengthtraining.traditional", color: .blue),
        WorkoutSessionModel(code: "B", name: "Torso", icon: "figure.core.training", color: .blue),   
        WorkoutSessionModel(code: "C", name: "Inferior", icon: "figure.cross.training", color: .blue)
    ]))
}
