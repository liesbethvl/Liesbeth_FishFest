//
//  File.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 31/01/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import Foundation

class Artist {
    var id:Int?
    var name:String?
    var stage:String?
    var time:String?
    var picName:String?
    var info:String?
    
    init(id:Int, name:String, stage:String, time:String, picName:String, info:String){
        self.id = id
        self.name = name
        self.stage = stage
        self.time = time
        self.picName = picName
        self.info = info
    }
}
