//
//  AlbumsViewController.swift
//  GalleryApp
//
//  Created by Pet Minuta on 06/02/2017.
//  Copyright © 2017 Pet Minuta. All rights reserved.
//

import UIKit

class AlbumsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "LabelTableViewCell", bundle: nil)
        tableView?.register(nib, forCellReuseIdentifier: "LabelTableViewCell")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.navigationItem.title = "Gallery"
        
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelTableViewCell", for: indexPath) as! LabelTableViewCell
        var title: String
        switch indexPath.item {
        case 0:
            title = "Stare Slike"
        case 1:
            title = "Random"
        case 2:
            title = "Priroda"
        case 3:
            title = "Grad"
        case 4:
            title = "Odmor"
        case 5:
            title = "Privatno"
        default:
            title = ""
        }
        cell.setup(title: title)
        return cell
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 6
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        let screenRect = tableView.bounds
        return screenRect.size.height / 7.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        var albumi = prepareAlbums()
        let picturesViewController = PicturesViewController(album: albumi[indexPath.item])
        navigationController?.pushViewController(picturesViewController, animated: true)
    }

    
    func prepareAlbums() -> [AlbumInfo] {
        var albumi = [AlbumInfo]()
        var slike0 = [PictureInfo]()
        for i in 0...20 {
            let slika = PictureInfo(name: ("slika_0_StareSlike_" + String(i)))
            slike0.append(slika)
        }
        
        
        let album1 = AlbumInfo(index: 0, name: "StareSlike", pictures: slike0)
        
        albumi.append(album1)
        
        var slike1 = [PictureInfo]()
        for i in 0...6 {
            let slika = PictureInfo(name: ("slika_1_Random_" + String(i)))
            slike1.append(slika)
        }
        
        let album2 = AlbumInfo(index: 1, name: "Random", pictures: slike1)
        
        albumi.append(album2)
        
        var slike2 = [PictureInfo]()
        for i in 0...10 {
            let slika = PictureInfo(name: ("slika_2_Priroda_" + String(i)))
            slike2.append(slika)
        }
        
        let album3 = AlbumInfo(index: 2, name: "Priroda", pictures: slike2)
        
        albumi.append(album3)
        
        var slike3 = [PictureInfo]()
        for i in 0...16 {
            let slika = PictureInfo(name: ("slika_3_Grad_" + String(i)))
            slike3.append(slika)
        }
        
        let album4 = AlbumInfo(index: 3, name: "Grad", pictures: slike3)
        albumi.append(album4)
        
        var slike4 = [PictureInfo]()
        for i in 0...13 {
            let slika = PictureInfo(name: ("slika_4_Odmor_" + String(i)))
            slike4.append(slika)
        }
        
        let album5 = AlbumInfo(index: 4, name: "Odmor", pictures: slike4)
        
        albumi.append(album5)
        
        let slika = PictureInfo(name: "slika_5_Privatno_0")
        
        let album6 = AlbumInfo(index: 5, name: "Privatno", pictures: [slika])
        
        albumi.append(album6)
    
        return albumi
        
    }
 
}
