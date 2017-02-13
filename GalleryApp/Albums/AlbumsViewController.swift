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
        let slika0 = PictureInfo(name: "slika_0_StareSlike_0")
        let slika1 = PictureInfo(name: "slika_0_StareSlike_1")
        let slika2 = PictureInfo(name: "slika_0_StareSlike_2")
        let slika3 = PictureInfo(name: "slika_0_StareSlike_3")
        let slika4 = PictureInfo(name: "slika_0_StareSlike_4")
        let slika5 = PictureInfo(name: "slika_0_StareSlike_5")
        let slika6 = PictureInfo(name: "slika_0_StareSlike_6")
        let slika7 = PictureInfo(name: "slika_0_StareSlike_7")
        let slika8 = PictureInfo(name: "slika_0_StareSlike_8")
        let slika9 = PictureInfo(name: "slika_0_StareSlike_9")
        let slika10 = PictureInfo(name: "slika_0_StareSlike_10")
        let slika11 = PictureInfo(name: "slika_0_StareSlike_11")
        let slika12 = PictureInfo(name: "slika_0_StareSlike_12")
        let slika13 = PictureInfo(name: "slika_0_StareSlike_13")
        let slika14 = PictureInfo(name: "slika_0_StareSlike_14")
        let slika15 = PictureInfo(name: "slika_0_StareSlike_15")
        let slika16 = PictureInfo(name: "slika_0_StareSlike_16")
        let slika17 = PictureInfo(name: "slika_0_StareSlike_17")
        let slika18 = PictureInfo(name: "slika_0_StareSlike_18")
        let slika19 = PictureInfo(name: "slika_0_StareSlike_19")
        let slika20 = PictureInfo(name: "slika_0_StareSlike_20")
        
        
        let album1 = AlbumInfo(index: 0, name: "StareSlike", pictures: [slika0, slika1, slika2, slika3,
                                                              slika4, slika5, slika6, slika7,
                                                              slika8, slika9, slika10, slika11,
                                                              slika12, slika13, slika14, slika15,
                                                              slika16, slika17, slika18, slika19,
                                                              slika20])
        
        albumi.append(album1)
        
        let slika21 = PictureInfo(name: "slika_1_Random_0")
        let slika22 = PictureInfo(name: "slika_1_Random_1")
        let slika23 = PictureInfo(name: "slika_1_Random_2")
        let slika24 = PictureInfo(name: "slika_1_Random_3")
        let slika25 = PictureInfo(name: "slika_1_Random_4")
        let slika26 = PictureInfo(name: "slika_1_Random_5")
        let slika27 = PictureInfo(name: "slika_1_Random_6")
        
        let album2 = AlbumInfo(index: 1, name: "Random", pictures: [slika21, slika22, slika23,
                                                                    slika24, slika25, slika26,
                                                                    slika27])
        
        albumi.append(album2)
        
        let slika28 = PictureInfo(name: "slika_2_Priroda_0")
        let slika29 = PictureInfo(name: "slika_2_Priroda_1")
        let slika30 = PictureInfo(name: "slika_2_Priroda_2")
        let slika31 = PictureInfo(name: "slika_2_Priroda_3")
        let slika32 = PictureInfo(name: "slika_2_Priroda_4")
        let slika33 = PictureInfo(name: "slika_2_Priroda_5")
        let slika34 = PictureInfo(name: "slika_2_Priroda_6")
        let slika35 = PictureInfo(name: "slika_2_Priroda_7")
        let slika36 = PictureInfo(name: "slika_2_Priroda_8")
        let slika37 = PictureInfo(name: "slika_2_Priroda_9")
        let slika60 = PictureInfo(name: "slika_2_Priroda_10")
        
        let album3 = AlbumInfo(index: 2, name: "Priroda", pictures: [slika28, slika29, slika30,
                                                                     slika31, slika32, slika33,
                                                                     slika34, slika35, slika36,
                                                                     slika37, slika60])
        
        albumi.append(album3)
        
        let slika38 = PictureInfo(name: "slika_3_Grad_0")
        let slika39 = PictureInfo(name: "slika_3_Grad_1")
        let slika40 = PictureInfo(name: "slika_3_Grad_2")
        let slika41 = PictureInfo(name: "slika_3_Grad_3")
        let slika42 = PictureInfo(name: "slika_3_Grad_4")
        let slika43 = PictureInfo(name: "slika_3_Grad_5")
        let slika44 = PictureInfo(name: "slika_3_Grad_6")
        let slika45 = PictureInfo(name: "slika_3_Grad_7")
        let slika46 = PictureInfo(name: "slika_3_Grad_8")
        let slika47 = PictureInfo(name: "slika_3_Grad_9")
        let slika48 = PictureInfo(name: "slika_3_Grad_10")
        let slika49 = PictureInfo(name: "slika_3_Grad_11")
        let slika50 = PictureInfo(name: "slika_3_Grad_12")
        let slika51 = PictureInfo(name: "slika_3_Grad_13")
        let slika52 = PictureInfo(name: "slika_3_Grad_14")
        let slika53 = PictureInfo(name: "slika_3_Grad_15")
        let slika54 = PictureInfo(name: "slika_3_Grad_16")
        
        let album4 = AlbumInfo(index: 3, name: "Grad", pictures: [slika38, slika39, slika40,
                                                                  slika41, slika42, slika43,
                                                                  slika44, slika45, slika46,
                                                                  slika47, slika48, slika49,
                                                                  slika50, slika51, slika52,
                                                                  slika53, slika54])
        albumi.append(album4)
        
        let slika55 = PictureInfo(name: "slika_4_Odmor_0")
        let slika56 = PictureInfo(name: "slika_4_Odmor_1")
        let slika57 = PictureInfo(name: "slika_4_Odmor_2")
        let slika58 = PictureInfo(name: "slika_4_Odmor_3")
        
        let album5 = AlbumInfo(index: 4, name: "Odmor", pictures: [slika55, slika56, slika57,
                                                                   slika58])
        
        albumi.append(album5)
        
        let slika59 = PictureInfo(name: "slika_5_Privatno_0")
        
        let album6 = AlbumInfo(index: 5, name: "Privatno", pictures: [slika59])
        
        albumi.append(album6)
    
        return albumi
        
    }
 
}
