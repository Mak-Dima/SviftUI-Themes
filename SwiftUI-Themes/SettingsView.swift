//
//  SettingsView.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var theme: ThemeService
    
    var body: some View {
        VStack{
            Text("Settings")
                .font(.title)
                .foregroundStyle(theme.current.fontColor)
            List{
                Section("Themes"){
                    Toggle("Dark Mode", isOn: $theme.isDarkMode)
                    Toggle("Light Mode", isOn: $theme.isLightMode)
                }
                .listRowBackground(theme.current.backgroundColor)
            }
            .scrollContentBackground(.hidden)
            .background(theme.current.backgroundColor)
            .foregroundStyle(theme.current.fontColor)
        }
        .padding()
        .background(theme.current.backgroundColor)
        .onChange(of: theme.isDarkMode, initial: false) { oldVal, newVal in
            theme.isLightMode = oldVal
            theme.isDarkMode = newVal
            theme.toggleTheme()
        }
        .onChange(of: theme.isLightMode, initial: false) { oldVal, newVal  in
            theme.isDarkMode = oldVal
            theme.isLightMode = newVal
            theme.toggleTheme()
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(ThemeService())
}
