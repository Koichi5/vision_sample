//
//  ContentView.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/09.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
//            Side View
            List {
                Text("Menu Item")
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    VStack(alignment: .leading) {
                        Text("Library")
                            .font(.largeTitle)
                        Text("All Music")
                            .foregroundStyle(.tertiary)
                    }
                }
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                    }
                }
            }
        } detail: {
//            Main View
        }
    }
}

#Preview {
    ContentView()
}
