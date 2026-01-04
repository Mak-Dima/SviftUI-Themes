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
        let tabAppearance = UITabBarAppearance()
        
        tabAppearance.stackedLayoutAppearance.normal.iconColor = .lightGray
        tabAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]
        
        tabAppearance.compactInlineLayoutAppearance.selected.iconColor = .blue
        tabAppearance.compactInlineLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.blue]
        
        UITabBar.appearance().standardAppearance = tabAppearance
    }
}
