//
//  PicturesViewController.swift
//  GalleryApp
//
//  Created by Pet Minuta on 07/02/2017.
//  Copyright © 2017 Pet Minuta. All rights reserved.
//

import UIKit

class PicturesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    private var album: AlbumInfo?
   
    convenience init(album: AlbumInfo) {
        self.init()
        self.album = album
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "PictureCollectionViewCell", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "PictureCollectionViewCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.navigationItem.title = album?.name
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int{
        return (album?.pictures.count) ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cellPic = self.collectionView.dequeueReusableCell(withReuseIdentifier: "PictureCollectionViewCell", for: indexPath) as! PictureCollectionViewCell
        if let nameOfPic = album?.pictures[indexPath.item] {
            let title = String(describing: nameOfPic).components(separatedBy: "\"")[1]
            cellPic.setup(imageName: title)
        }
        return cellPic
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        let cellWidth = screenWidth / 5.0; //Replace the divisor with the column count requirement. Make sure to have it in float.
        let size = CGSize(width: cellWidth + 3.0, height: cellWidth + 3.0)
        return size;
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(3.0, 3.0, 3.0, 3.0)

    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        if let nameOfPic = album?.pictures[indexPath.item] {
            let title = String(describing: nameOfPic).components(separatedBy: "\"")[1]
            let pictureDetailsViewController = PictureDetailsViewController(title: title)
            navigationController?.pushViewController(pictureDetailsViewController, animated: true)
        }
    }

}
