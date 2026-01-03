//
//  ThemeService.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-03.
//

import SwiftUI

protocol Theme {
    var fontColor: Color { get set }
    var backgroundColor: Color { get set }
}

struct LightTheme: Theme {
    var fontColor: Color = .fontLight
    var backgroundColor: Color = .backgroundLight
}

struct DarkTheme: Theme {
    var fontColor: Color = .fontDark
    var backgroundColor: Color = .backgroundDark
}

class ThemeService : ObservableObject {
    @Published var currentTheme: Theme
    @Published var isDarkMode: Bool
    @Published var isLightMode: Bool
    
    init() {
        currentTheme = LightTheme()
        isDarkMode = false
        isLightMode = true
    }
}
