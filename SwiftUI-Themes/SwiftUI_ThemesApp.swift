//
//  SwiftUI_ThemesApp.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

@main
struct SwiftUI_ThemesApp: App {
    
    @StateObject var themeService: ThemeService = .init()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeService)
        }
    }
}
