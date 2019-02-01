//
//  DetailsViewController.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 01/02/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var tvArtistName: UITextView!
    @IBOutlet weak var imageArtistPic: UIImageView!
    @IBOutlet weak var tvTimeStage: UITextView!
    @IBOutlet weak var tvInfo: UITextView!
    
    var artistDetail:Artist?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvArtistName.text = artistDetail?.name
        tvTimeStage.text = (artistDetail?.time)! + " " + (artistDetail?.stage)!
        tvInfo.text = artistDetail?.info
        imageArtistPic.image = UIImage.init(named: artistDetail!.picName!)
    }
    

    

}
