//
//  ContentView.swift
//  Animations
//
//  Created by Serge Eliseev on 24.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false


    var body: some View {
        Button("Tap Me") {
            withAnimation{
                isShowingRed.toggle()
            }
        }
        
        if isShowingRed {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
        }
        
    }
}

#Preview {
    ContentView()
}
