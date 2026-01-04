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
    var sectionBackgroundColor: Color { get set }
    var strokeColor: Color { get set }
    var buttonBackgroundColor: Color { get set }
}

struct LightTheme: Theme {
    var fontColor: Color = .fontLight
    var backgroundColor: Color = .backgroundLight
    var sectionBackgroundColor: Color = .sectionBackgroundLight
    var strokeColor: Color = .strokeLight
    var buttonBackgroundColor: Color = .buttonBackgroundLight
}

struct DarkTheme: Theme {
    var fontColor: Color = .fontDark
    var backgroundColor: Color = .backgroundDark
    var sectionBackgroundColor: Color = .sectionBackgroudDark
    var strokeColor: Color = .strokeDark
    var buttonBackgroundColor: Color = .buttonBackgroundDark
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
