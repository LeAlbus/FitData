//
//  Colors.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

enum Colors: String, CaseIterable, Identifiable{
    
    var id: String { rawValue }
    
    case gray
    case red
    case yellow
    case green
    case blue
    case purple


    var color: Color {
        switch self {
        case .gray:
            return .gray
        case .red:
            return .red
        case .yellow:
            return .orange
        case .green:
            return .mint
        case .blue:
            return .cyan
        case .purple:
            return .indigo
        }
    }
}
