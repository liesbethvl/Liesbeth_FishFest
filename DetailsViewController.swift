//
//  DetailsViewController.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 01/02/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var tfArtistName: UITextField!
    @IBOutlet weak var tfTimeStage: UITextField!
    @IBOutlet weak var tvInfo: UITextView!
    
    var artistDetail:Artist?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfArtistName.text = artistDetail?.name
        tfTimeStage.text = (artistDetail?.time)! + " " + (artistDetail?.stage)!
        tvInfo.text = artistDetail?.info

    }
    

    

}
