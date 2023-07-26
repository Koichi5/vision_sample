//
//  vision_sampleApp.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/09.
//

import SwiftUI

@main
struct vision_sampleApp: App {
    var body: some Scene {
//        WindowGroup {
//            MusicAppContentView()
//        }
        WindowGroup(id: "main") {
            PlanetsContentView()
        }
        ImmersiveSpace(id: "saturn") {
            PlanetsView()
        }
    }
}
