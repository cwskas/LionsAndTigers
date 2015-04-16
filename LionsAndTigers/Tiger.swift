//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Willie Strickland on 4/11/15.
//  Copyright (c) 2015 Willie Strickland. All rights reserved.
//

import Foundation
import UIKit

// the 'blueprint' for our tigers
struct Tiger {
//    <#properties and methods#>
    var name = ""
    var age = 0
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        println("\(self.name) says :  Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
}