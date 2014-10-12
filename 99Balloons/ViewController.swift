//
//  ViewController.swift
//  99Balloons
//
//  Created by Clint Greive on 12/10/2014.
//  Copyright (c) 2014 Clint Greive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonsLabel: UILabel!
    @IBOutlet weak var balloonsImageViewBackground: UIImageView!
    
    var balloonsArray:[BalloonsStruct] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.balloonCreation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonsBarButtonItemPressed(sender: UIBarButtonItem) {
        
        let balloon = balloonsArray[currentIndex]
        
        balloonsLabel.text = "\(balloon.number) balloons"
        balloonsImageViewBackground.image = balloon.image
        
        currentIndex += 1
    }
    
    // helper function to keep viewDidLoad Class
    func balloonCreation () {
        for var balloonCount = 0; balloonCount <= 99; balloonCount++ {
            var balloon = BalloonsStruct ()
            balloon.number = balloonCount
            
            var randomNumber = Int(arc4random_uniform(UInt32(10)))
            
            while self.currentIndex == randomNumber {
                randomNumber = Int(arc4random_uniform(UInt32(10)))
            }
            
            switch randomNumber {
            case 1:
                balloon.image = UIImage(named: "balloons1.jpeg")
            case 2:
                balloon.image = UIImage(named: "balloons2.jpeg")
            case 3:
                balloon.image = UIImage(named: "balloons3.jpeg")
            case 4:
                balloon.image = UIImage(named: "balloons4.jpeg")
            case 5:
                balloon.image = UIImage(named: "balloons5.jpg")
            case 6:
                balloon.image = UIImage(named: "balloons6.jpg")
            case 7:
                balloon.image = UIImage(named: "balloons7.jpg")
            case 8:
                balloon.image = UIImage(named: "balloons8.jpg")
            case 9:
                balloon.image = UIImage(named: "balloons9.jpg")
            default:
                balloon.image = UIImage(named: "balloons10.jpg")
            }
            
            self.balloonsArray.append(balloon)
        }
    }
}