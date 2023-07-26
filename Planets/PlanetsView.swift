//
//  PlanetsView.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetsView: View {
    @Environment(\.dismissWindow) var dismissWindow
    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: "Planets", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
        .gesture(TapGesture().targetedToAnyEntity().onEnded({ value in
            
            let timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(2), repeats: true) { timer in
                var transform = value.entity.transform
                let radians = 90.0 * Float.pi / 180.0
                transform.rotation *= simd_quatf(angle: radians, axis: SIMD3<Float>(0.2, 1, 0))
    //            transform.translation += SIMD3(0.1, 0, -0.1)
                value.entity.move(
                    to: transform,
                    relativeTo: nil,
                    duration: 2,
                    timingFunction: .linear
                )
            }
            
            timer.fire()
        }))
        .onAppear {
            dismissWindow(id: "main")
        }
    }
}

#Preview {
    PlanetsView()
}

