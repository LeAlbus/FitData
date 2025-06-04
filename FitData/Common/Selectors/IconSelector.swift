//
//  IconSelector.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

struct IconSelector: View {
  
    @Binding var selected: String
    
    let workoutIcons: [String] = [
        Icon.Workout.arms,
        Icon.Workout.legs,
        Icon.Workout.back,
        Icon.Workout.core
    ]

    let columns = [GridItem(.adaptive(minimum: 60))]
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(workoutIcons, id: \.self) { iconName in
                Button {
                    selected = iconName
                } label: {
                    Image(systemName: iconName)
                        .font(.system(size: 28))
                        .frame(width: 60, height: 60)
                        .background(
                            Circle()
                                .fill(selected == iconName ? Color.accentColor : Color.gray.opacity(0.2))
                        )
                        .foregroundColor(selected == iconName ? .white : .primary)
                }
                .buttonStyle(.plain)
            }
        }
    }
}

