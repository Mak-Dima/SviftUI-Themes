//
//  DataView.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

struct DataView: View {
    
    @EnvironmentObject var theme: ThemeService
    
    @State var textData = """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
        """
    
    var body: some View {
        VStack(spacing: 10) {
            Button {
                print("UP")
            } label: {
                Text("Up")
                    .customButtonModifier()
            }
                       Text(textData)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity )
                .foregroundStyle(theme.current.fontColor)
                .background{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(theme.current.backgroundColor)
                        .stroke(theme.current.strokeColor, lineWidth: 1)
                }
            
            Button {
                print("DOWN")
            } label: {
                Text("Down")
                    .customButtonModifier()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(theme.current.backgroundColor)
    }
}

#Preview {
    DataView()
        .environmentObject(ThemeService())
}
