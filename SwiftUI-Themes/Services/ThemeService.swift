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
    var strokeColor: Color { get set }
}

struct LightTheme: Theme {
    var fontColor: Color = .fontLight
    var backgroundColor: Color = .backgroundLight
    var strokeColor: Color = .strokeLight
}

struct DarkTheme: Theme {
    var fontColor: Color = .fontDark
    var backgroundColor: Color = .backgroundDark
    var strokeColor: Color = .strokeDark
}

class ThemeService : ObservableObject {
    private var lightTheme: Theme = LightTheme()
    private var darkTheme: Theme = DarkTheme()
    
    @Published var current: Theme
    @Published var isDarkMode: Bool
    @Published var isLightMode: Bool
    
    init() {
        current = lightTheme
        isDarkMode = false
        isLightMode = true
    }
    
    func toggleTheme() {
        if isDarkMode {
            current = darkTheme
        } else {
            current = lightTheme
        }
    }
}
