//
//  OrbitAppContentView.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/18.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct OrbitAppContentView: View {
    var body: some View {
        RealityView { content in
            do {
                print("fired")
                let plane = try await Entity(named: "plane")
                plane.scale = [0.001, 0.001, 0.001]
                plane.position = [0, -0.005, 0]
                content.add(plane)
            } catch {
                print("Entity encountered an error while loading the model.")
                return
            }
        }
    }
}
#Preview {
    OrbitAppContentView()
}
