//
//  SettingsView.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var themeService: ThemeService
    
    var body: some View {
        VStack{
            Text("Settings")
                .font(.title)
            List{
                Section("Themes"){
                    Toggle("Dark Mode", isOn: $themeService.isDarkMode)
                    Toggle("Light Mode", isOn: $themeService.isLightMode)
                }
            }
        }
        .padding()
        .onChange(of: themeService.isDarkMode, initial: false) { oldVal, newVal in
            themeService.isLightMode = oldVal
            themeService.isDarkMode = newVal
            themeService.currentTheme = DarkTheme()
        }
        .onChange(of: themeService.isLightMode, initial: false) { oldVal, newVal  in
            themeService.isDarkMode = oldVal
            themeService.isLightMode = newVal
            themeService.currentTheme = LightTheme()
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(ThemeService())
}
