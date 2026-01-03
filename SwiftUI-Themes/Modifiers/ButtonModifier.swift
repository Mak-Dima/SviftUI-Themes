//
//  ButtonModifier.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-03.
//

import Foundation
import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background{
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.yellow)
                    .stroke(Color.black, lineWidth: 1)
            }
    }
}
