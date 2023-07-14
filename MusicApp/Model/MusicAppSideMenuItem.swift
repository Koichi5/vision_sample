//
//  MusicAppSideMenuItem.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/14.
//

import Foundation

struct MusicAppSideMenuItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var icon: String
}

let musicAppSideMenuItems: [MusicAppSideMenuItem] = [
    MusicAppSideMenuItem(name: "Recently Added", icon: "clock"),
    MusicAppSideMenuItem(name: "Artists", icon: "music.mic"),
    MusicAppSideMenuItem(name: "Albums", icon: "square.stack"),
    MusicAppSideMenuItem(name: "Songs", icon: "music.note"),
    MusicAppSideMenuItem(name: "Made For You", icon: "person.crop.square")
]
