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
        println("\(self.name) says  Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
// a different function because it has different parameters
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes;
            chuffTimes++ {            // chuffTimes++ is equivalent to ++chuffTimes
                if isLoud {
                    chuff()
                }
                else {
                    println("\(self.name) says :  purr purr")
                }
        }
    }
    
    func ageInTigerYearsFromAge(regularAge: Int) ->  Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        var randomFact: String
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the biggest species in the cat family"
            }
        else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3 meters"
            }
        else {
            randomFact = "A group of tigers is known as an 'ambush or 'streak'"
            }
        return randomFact
    }
}