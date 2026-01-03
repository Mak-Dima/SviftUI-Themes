//
//  View.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-03.
//

import SwiftUI

extension View {
    func customButtonModifier() -> some View {
        return modifier(ButtonModifier())
    }
}
