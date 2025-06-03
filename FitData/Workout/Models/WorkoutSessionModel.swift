//
//  WorkoutSessionModel.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import Foundation
import SwiftUICore

struct WorkoutSessionModel: Identifiable {
    let id = UUID()
    let code: String
    let name: String
    let icon: String
    let color: Color  
}
