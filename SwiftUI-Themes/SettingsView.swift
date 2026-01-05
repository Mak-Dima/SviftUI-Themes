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
        ZStack {
            VStack(alignment: .leading, spacing: 12) {
                List {
                    Picker("Theme", selection: $theme.selectedTheme) {
                        ForEach(ThemeType.allCases) { theme in
                            Text(theme.displayName).tag(theme)
                        }
                    }
                    .listRowBackground(theme.current.sectionBackgroundColor)
                    .foregroundStyle(theme.current.fontColor)
                    .pickerStyle(.inline)
                }
                .scrollContentBackground(.hidden)
            }
            .padding()
        }
        .frame(maxWidth: .infinity,  maxHeight: .infinity)
        .padding()
        .background(theme.current.backgroundColor)
    }
}

#Preview {
    SettingsView()
        .environmentObject(ThemeService())
}
