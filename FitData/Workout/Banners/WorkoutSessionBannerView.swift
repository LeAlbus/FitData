//  WorkoutSessionBannerView.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

struct WorkoutSessionBannerView: View {
    
    let workout: WorkoutSessionModel
    
    var body: some View {
        VStack (alignment: .center, spacing: 8){
            Image(systemName: workout.icon)
                .font(.system(size: 40))
                .foregroundColor(.white)

            Text ("\(workout.code) - \(workout.name)")
                .font(.title)
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(workout.color)
                .shadow(color: workout.color.opacity(0.3), radius: 5, x: 0, y: 4)
        )
        .frame(height: 150)
    }
}

#Preview {
    WorkoutSessionBannerView(workout: WorkoutSessionModel(code: "A", name: "Superior", icon: "figure.cross.training", color: .blue))
}
