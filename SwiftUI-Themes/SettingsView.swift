//
//  SettingsView.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

struct SettingsView: View {
    @State var isDarkModeEnabled = false
    @State var isLightModeEnabled = false
    
    var body: some View {
        VStack{
            Text("Settings")
            Toggle("Dark Mode", isOn: $isDarkModeEnabled)
            Toggle("Light Mode", isOn: $isLightModeEnabled)
        }
        .padding()
    }
}

#Preview {
    SettingsView()
}
