//
//  DataView.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

struct DataView: View {
    var body: some View {
        VStack {
            Text("Data")
                .foregroundStyle(.fontLight)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundLight)
    }
}

#Preview {
    DataView()
}
