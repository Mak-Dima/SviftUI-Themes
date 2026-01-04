//
//  ThemeService.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-03.
//

import SwiftUI

protocol Theme {
    var fontColor: Color { get }
    var backgroundColor: Color { get }
    var sectionBackgroundColor: Color { get }
    var strokeColor: Color { get }
    var buttonBackgroundColor: Color { get }
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

enum ThemeType: String, CaseIterable, Identifiable {
    case light, dark
    
    var id: String {
        self.rawValue
    }
    
    var displayName: String {
        self.rawValue.capitalized
    }
}

class ThemeService : ObservableObject {
    private var lightTheme: Theme
    private var darkTheme: Theme
    
    @Published var current: Theme
    @Published var selectedTheme: ThemeType = .light {
        didSet {
            updateTheme()
        }
    }
    
    init() {
        lightTheme = LightTheme()
        darkTheme = DarkTheme()
        current = lightTheme
        setTabBarApperance()
    }
    
    private func setTabBarApperance() {
        let tabAppearance = UITabBarAppearance()
        
        tabAppearance.stackedLayoutAppearance.normal.iconColor = .lightGray
        tabAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]
        
        tabAppearance.compactInlineLayoutAppearance.selected.iconColor = .blue
        tabAppearance.compactInlineLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.blue]
        
        UITabBar.appearance().standardAppearance = tabAppearance
    }
    
    func updateTheme() {
        switch selectedTheme {
        case .dark:
            current = darkTheme
        case .light:
            current = lightTheme
        }
    }
}
