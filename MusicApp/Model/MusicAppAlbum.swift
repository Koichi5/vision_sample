//
//  MusicAppAlbum.swift
//  vision_sample
//
//  Created by Koichi Kishimoto on 2023/07/14.
//

import Foundation

struct MusicAppAlbum: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

let musicAppAlbums: [MusicAppAlbum] = [
    MusicAppAlbum(image: "https://i1.sndcdn.com/artworks-000108687931-8n3xz1-t500x500.jpg", title: "夜明けと蛍", subTitle: "n-buna"),
    MusicAppAlbum(image: "https://assets.st-note.com/production/uploads/images/98018715/rectangle_large_type_2_30b9505436ebe8c9b80e10ce3b2dd2af.jpg?width=2000&height=2000&fit=bounds&format=jpg&quality=85", title: "ビリミリオン", subTitle: "優里"),
    MusicAppAlbum(image: "https://ogre.natalie.mu/media/news/music/2020/0713/yuri_jkt202007.jpg?imwidth=750&imdensity=1", title: "ピーターパン", subTitle: "優里"),
    MusicAppAlbum(image: "https://content-jp.umgi.net/products/um/UMCK-5643_RGT_extralarge.jpg?05022020084234", title: "瞬き", subTitle: "back number"),
    MusicAppAlbum(image: "https://mrsgreenapple.com/s3/skiyaki/uploads/image/file/152924/0417%E8%A7%A3%E7%A6%81_%E3%82%B1%E3%82%BB%E3%83%A9%E3%82%BB%E3%83%A9%E9%85%8D%E4%BF%A1%E3%82%B7%E3%82%99%E3%83%A3%E3%82%B1%E3%83%83%E3%83%88_%E8%BB%BD.jpg", title: "ケセラセラ", subTitle: "Mrs.GREEN APPLE"),
    MusicAppAlbum(image: "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/942/627/80942627_1493260557916_1_600x600.JPG/dims/resize/Q_80,0", title: "君と羊と青", subTitle: "RADWINPS"),
    MusicAppAlbum(image: "https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/f9/be/67/f9be6703-931a-bddf-879a-0a9ee0b32c06/00602577304958.rgb.jpg/632x632bb.webp", title: "正解", subTitle: "RADWINPS"),
    MusicAppAlbum(image: "https://www.sonymusic.co.jp/adm_image/common/artist_image/71006000/71006781/jacket_image/279935__800_800_0.jpg", title: "Green Green Grass", subTitle: "Grorge Ezra"),
    MusicAppAlbum(image: "https://i.kfs.io/album/global/160266204,0v1/fit/500x500.jpg", title: "Talking Box", subTitle: "WurtS"),
    MusicAppAlbum(image: "https://m.media-amazon.com/images/I/41VcllCPmdL._UXNaN_FMjpg_QL85_.jpg", title: "Toca Toca", subTitle: "Fly Project"),
    MusicAppAlbum(image: "https://simg.mysound.jp/img/disc/934/120_UPC00602455505934.jpg", title: "都落ち", subTitle: "ヨルシカ"),
]
