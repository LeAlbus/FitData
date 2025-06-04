//
//  WorkoutModel.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

class WorkoutModel: ObservableObject {
    @Published var sessions: [WorkoutSessionModel]
    
    public init (sessions: [WorkoutSessionModel] = []) {
        self.sessions = sessions
    }
    
    func addNewSession(_ session: WorkoutSessionModel) { 
        sessions.append(session)
    }
}
