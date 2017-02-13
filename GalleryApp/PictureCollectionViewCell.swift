//
//  PictureCollectionViewCell.swift
//  GalleryApp
//
//  Created by Pet Minuta on 07/02/2017.
//  Copyright © 2017 Pet Minuta. All rights reserved.
//

import UIKit

class PictureCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pictureCell: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(imageName: String) {
        pictureCell.image = UIImage(named: imageName)
    }

}
