//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Willie Strickland on 4/19/15.
//  Copyright (c) 2015 Willie Strickland. All rights reserved.
//

import Foundation

class LionCub: Lion {    // Lion is the superclass of LionCub
    
    func rubLionCubsBelly () {
        println("LionCub: Snuggle and be happy")
    }
    
    override func roar () {
        super.roar()
        println("LionCub: Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFactString:String
        if isAlphaMale {
            randomFactString = "Cubs are usually hidden in the dense bush for approximately six weeks."
        }
        else {
            randomFactString = "Cubs begin eating meat at about the age of six weeks"
        }
        return randomFactString
    }
}

// inheritance goes down but not up in classes.  LionCub inherited all of Lion, but Lion knows nothing about rubLionCubsBelly