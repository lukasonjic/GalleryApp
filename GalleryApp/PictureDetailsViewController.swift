//
//  PictureDetailsViewController.swift
//  GalleryApp
//
//  Created by Pet Minuta on 07/02/2017.
//  Copyright © 2017 Pet Minuta. All rights reserved.
//

import UIKit

class PictureDetailsViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var fullImage: UIImageView!
    @IBOutlet weak var scrollImage: UIScrollView!
    private var pictureTitle: String?
    
    convenience init(title: String) {
        self.init()
        self.pictureTitle = title
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup(title: self.pictureTitle!)
        self.navigationItem.title = self.pictureTitle
        self.scrollImage.delegate = self
        
        self.scrollImage.addSubview(fullImage)
        
        scrollImage.alwaysBounceVertical = false
        scrollImage.alwaysBounceHorizontal = false
        scrollImage.showsVerticalScrollIndicator = true
        scrollImage.isScrollEnabled = true
        scrollImage.flashScrollIndicators()
        
        scrollImage.minimumZoomScale = 1.0
        scrollImage.maximumZoomScale = 10.0
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return self.fullImage
    }

    func setup (title: String) {
        fullImage.image = UIImage(named: title)
    }
}
