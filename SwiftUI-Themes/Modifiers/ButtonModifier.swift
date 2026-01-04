//
//  ButtonModifier.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-03.
//

import Foundation
import SwiftUI

struct ButtonModifier: ViewModifier {
    @EnvironmentObject var theme: ThemeService
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(theme.current.fontColor)
            .frame(maxWidth: .infinity)
            .padding()
            .background{
                RoundedRectangle(cornerRadius: 15)
                    .fill(theme.current.buttonBackgroundColor)
                    .stroke(theme.current.strokeColor, lineWidth: 1)
            }
    }
}
