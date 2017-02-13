//
//  LabelTableViewCell.swift
//  GalleryApp
//
//  Created by Pet Minuta on 07/02/2017.
//  Copyright © 2017 Pet Minuta. All rights reserved.
//

import UIKit

class LabelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelCell: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title: String) {
        labelCell.text = title
    }
}
    

