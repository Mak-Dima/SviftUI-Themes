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
        VStack {
            Text("Settings")
                .font(.system(size: 34, weight: .bold))
                .padding(.horizontal)
                .padding(.top, 5)
                .foregroundStyle(theme.current.fontColor)
            
            List {
                Section {
                    Picker(selection: $theme.selectedTheme) {
                        ForEach(ThemeType.allCases) { theme in
                            Text(theme.displayName)
                                .tag(theme)
                        }
                    } label: {
                        Text("Theme")
                    }
                    .pickerStyle(.inline)
                }
                .listRowBackground(theme.current.sectionBackgroundColor)
                .foregroundStyle(theme.current.fontColor)
            }
            .scrollContentBackground(.hidden)
        }
        .background(theme.current.backgroundColor)
    }
}

#Preview {
    SettingsView()
        .environmentObject(ThemeService())
}
