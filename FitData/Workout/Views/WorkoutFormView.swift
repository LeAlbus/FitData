//
//  WorkoutFormView.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

struct WorkoutFormView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var model: WorkoutModel

    @State private var code: String = ""
    @State private var name: String = ""
    @State private var selectedIcon: Icons = .lift
    @State private var selectedColor: Colors = .yellow
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Name")) {
                    TextField("Ex: Legs", text: $name)
                }
                
                Section(header: Text("Icon")) {
                    IconSelector(selected: $selectedIcon)
                }
                
                Section(header: Text("Color")) {
                    ColorSelector(selected: $selectedColor)
                }
                
                Section {
                    Button("Confirm") {
                        let code = "X"
                        let session = WorkoutSessionModel(
                            code: code,
                            name: name,
                            icon: selectedIcon.rawValue,
                            color: selectedColor.color
                        )
                        model.addNewSession(session)
                        dismiss()
                    }
                    .disabled(name.isEmpty)
                }
            }
            .navigationTitle("New Workout")
        }
    }
}
