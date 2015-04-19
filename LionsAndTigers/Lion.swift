//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Willie Strickland on 4/19/15.
//  Copyright (c) 2015 Willie Strickland. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named:"")
    var name = ""
    var subspecies = ""
    
    func roar() {
        println("Lion: Roar Roar")
    }
    
    func changeToAlphaMale() {
        self.isAlphaMale = true    // can use self. in a class but not a struct
    }
    
    func randomFact() -> String {
        var randomFact:String
        
        if self.isAlphaMale {
            randomFact = "Male lions are easy to recognize thanks to their distinctive manes. Males with darker manes are more likely to attract females."
        }
        else {
            randomFact = "Female Lionesses form the stable social unit and do not tolerate outside females."
        }
        return randomFact
    }
}