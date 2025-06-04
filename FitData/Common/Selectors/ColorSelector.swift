//
//  ColorSelector.swift
//  FitData
//
//  Created by Pedro Lopes on 03/06/25.
//

import SwiftUI

struct ColorSelector: View {
  
    @Binding var selected: Colors

    let colors = Colors.allCases
    let columns = [GridItem(.adaptive(minimum: 60))]
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach (colors) { color in
                Button {
                    selected = color
                } label: {
                    Circle()
                        .fill(color.color)
                        .frame(width: 44, height: 44)
                        .overlay(
                            Circle()
                                .strokeBorder(selected == color ? Color.primary : Color.clear, lineWidth: 3)
                        )
                        .shadow(radius: selected == color ? 4 : 0)
                }
                .buttonStyle(.plain)
            }
        }
    }
}

