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
                    .pickerStyle(.inline)
                    .background(theme.current.sectionBackgroundColor)
                }
                .background(theme.current.sectionBackgroundColor)
            }
            .padding()
            .background(theme.current.sectionBackgroundColor)
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
