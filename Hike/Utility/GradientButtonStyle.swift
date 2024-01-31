//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Gaurav Rawat on 2024-01-31.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View{
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [
                    Color.customGrayLight,
                    Color.customGrayMedium
                ],
                startPoint: .top,
                endPoint: .bottom)
                :
                LinearGradient(colors: [
                    Color.customGrayMedium,
                    Color.customGrayLight
                ],
                startPoint: .top,
                endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
