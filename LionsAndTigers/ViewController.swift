//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Willie Strickland on 4/11/15.
//  Copyright (c) 2015 Willie Strickland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!
    
    var myTigers:[Tiger] = []  // the   = []   insures that the array exist even though it is empty
    var lions:[Lion] = []
    
    var currentIndex = 0
    var currentAnimal = (species: "Tiger", index: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        myTiger.chuffANumberOfTimes(1, isLoud: false)
        
        myTigers.append(myTiger)
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "Age \(myTiger.ageInTigerYearsFromAge(myTiger.age))"
        breedLabel.text = myTiger.breed
        self.randomFactLabel.text = myTiger.randomFact()
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")

        var fourthTiger = Tiger(name: "Spar", age: 4, breed: "Siberian Tiger", image: UIImage(named: "SiberianTiger.jpg"))
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "Lion.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Sarabi"
        lioness.subspecies  = "Barbary"
        
        lion.roar()
        lioness.roar()
        
        lion.changeToAlphaMale()
        println(lion.isAlphaMale)
        
        self.lions += [lion, lioness]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        
        updateAnimal()
        updateView()
        
//        var randomIndex:Int
//        do {
//            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
//        } while currentIndex == randomIndex
//        
// // I added this experimenting with getting a specific tiger to be either loud or not
//        currentIndex = randomIndex
//        let tiger = myTigers[randomIndex]
//        switch currentIndex {
//        case 1, 3:
//            tiger.chuffANumberOfTimes(1, isLoud: false)
//        default:
//            tiger.chuffANumberOfTimes(1, isLoud: true)
//        }
//        
//        var tigerYears: Int
//        tigerYears = tiger.ageInTigerYearsFromAge(tiger.age)
        
//        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:{
//            self.nameLabel.text = tiger.name
//            self.ageLabel.text = "Age \(tigerYears)"
//            self.breedLabel.text = tiger.breed
//            self.myImageView.image = tiger.image
//            self.randomFactLabel.text = tiger.randomFact()
//            }, completion: { (finished: Bool) -> () in
//        })
    }
    
        func updateAnimal () {
            switch currentAnimal {
            case ("Tiger", _):
                    let randomIndex = Int(arc4random_uniform(UInt32(lions.count)))
                    currentAnimal = ("Lion", randomIndex)
            default:
                let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
                currentAnimal = ("Tiger", randomIndex)
            }
        }
        
        func updateView () {
            
            UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:{

                if self.currentAnimal.species == "Tiger" {
                    let tiger = self.myTigers[self.currentAnimal.index]
                    self.myImageView.image = tiger.image
                    self.breedLabel.text = tiger.breed
                    self.ageLabel.text = "Age: \(tiger.age)"
                    self.nameLabel.text = tiger.name
                    self.randomFactLabel.text = tiger.randomFact()
                }
                else if self.currentAnimal.species == "Lion" {
                    let lion = self.lions[self.currentAnimal.index]
                    self.myImageView.image = lion.image
                    self.breedLabel.text = lion.subspecies
                    self.ageLabel.text = "Age: \(lion.age)"
                    self.nameLabel.text = lion.name
                    self.randomFactLabel.text = lion.randomFact()
                    
                }
                self.randomFactLabel.hidden = false
                
                }, completion: { (finished: Bool) -> () in
            })

        }
}

