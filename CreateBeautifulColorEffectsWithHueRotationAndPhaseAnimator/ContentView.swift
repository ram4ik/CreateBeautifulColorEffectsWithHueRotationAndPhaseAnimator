//
//  ContentView.swift
//  CreateBeautifulColorEffectsWithHueRotationAndPhaseAnimator
//
//  Created by Ramill Ibragimov on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(Gradient(colors: [.pink, .purple, .blue, .green]))
                .phaseAnimator([false, true]) { p, e in
                    p
                        .hueRotation(.degrees(e ? 720 : 0))
                        .rotationEffect(.degrees(e ? 5 : 0))
                        .scaleEffect(e ? 1 : 0.9)
                } animation: { e in
                        .easeOut(duration: 2)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
