//
//  DataView.swift
//  SwiftUI-Themes
//
//  Created by Dmytro Maksiutenko on 2026-01-02.
//

import SwiftUI

struct DataView: View {
    
    @State var textData = """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
        """
    
    var body: some View {
        VStack(spacing: 10) {
            Button("Up"){print("UP")}
                .foregroundStyle(.fontLight)
                .frame(maxWidth: .infinity)
                .padding()
                .customButtonModifier()
            
            Text(textData)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity )
                .foregroundStyle(.fontLight)
                .background{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .stroke(Color.black, lineWidth: 1)
                }
            
            Button("Down"){print("DOWN")}
                .foregroundStyle(.fontLight)
                .frame(maxWidth: .infinity)
                .padding()
                .customButtonModifier()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(Color.backgroundLight)
    }
}

#Preview {
    DataView()
}
