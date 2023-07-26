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
    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: "Planets", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
        .gesture(TapGesture().targetedToAnyEntity().onEnded({ value in
            var transform = value.entity.transform
            transform.translation += SIMD3(0.1, 0, -0.1)
            value.entity.move(
                to: transform,
                relativeTo: nil,
                duration: 3,
                timingFunction: .easeInOut
            )
        }))
    }
}

#Preview {
    PlanetsView()
}

