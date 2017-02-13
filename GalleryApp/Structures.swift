//
//  Structures.swift
//  GalleryApp
//
//  Created by Pet Minuta on 06/02/2017.
//  Copyright © 2017 Pet Minuta. All rights reserved.
//

import Foundation

struct AlbumInfo {
    var index: Int
    var name: String
    var pictures = [PictureInfo]()
    
    init(index: Int, name: String, pictures: [PictureInfo]) {
        self.index = index
        self.name = name
        self.pictures = pictures
    }
    
}

struct PictureInfo {
    var name: String
    
    init(name:String) {
        self.name = name
    }
}
