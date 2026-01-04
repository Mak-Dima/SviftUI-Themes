//
//  ContentView.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Data", systemImage: "text.document") { DataView() }
            Tab("Settings", systemImage: "gear") { SettingsView() }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ThemeService())
}
