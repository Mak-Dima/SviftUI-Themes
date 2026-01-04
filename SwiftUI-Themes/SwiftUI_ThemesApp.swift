//
//  SwiftUI_ThemesApp.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

@main
struct SwiftUI_ThemesApp: App {
    init() {
        setTabBarApperance()
    }
    
    @StateObject var themeService: ThemeService = .init()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeService)
        }
    }
}

extension SwiftUI_ThemesApp {
    func setTabBarApperance() {
        let tabApperance = UITabBarAppearance()
        
        tabApperance.stackedLayoutAppearance.normal.iconColor = .lightGray
        tabApperance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]
        
        tabApperance.compactInlineLayoutAppearance.selected.iconColor = .blue
        tabApperance.compactInlineLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.blue]
        
        UITabBar.appearance().standardAppearance = tabApperance
    }
}
