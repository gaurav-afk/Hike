//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Gaurav Rawat on 2024-01-31.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.9)
            
            LinearGradient(colors: [
                Color.customGreenLight,
                Color.customGreenMedium
            ],
            startPoint: .top,
            endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
