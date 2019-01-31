//
//  LineUpStage.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 31/01/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import Foundation

class LineUpStage  {
    
    var name:String?
    var artistList:[Artist]?
    
    init(naam:String) {
        self.name = naam
        artistList = [Artist].init()
    }
    
}
