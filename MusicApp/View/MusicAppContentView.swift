//
//  MusicAppContentView.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/14.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct MusicAppContentView: View {
    var body: some View {
        TabView {
            NavigationSplitView {
                MusicAppSideBarView()
            } detail: {
                MusicAppAlbumsView()
            }
            .tabItem {
                Label("Browse", systemImage: "music.note")
            }.tag(0)
            
            Text("Favotite")
                .tabItem {
                Label("Favotite", systemImage: "heart.fill")
                }.tag(1)
            Text("Playlist")
                .tabItem {
                Label("Playlist", systemImage: "play.square.stack")
                }.tag(1)
        }
    }
}

#Preview {
    NavigationStack {
        MusicAppContentView()
    }
}
