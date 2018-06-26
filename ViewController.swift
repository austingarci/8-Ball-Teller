//
//  ViewController.swift
//  Mystic 8 Ball
//  Created by Austin Garcia on 6/20/18.
//  Copyright © 2018 Austin Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0

    
    override func viewDidLoad() {
    super.viewDidLoad()
    newBallMethod()
        
    }
    
    @IBAction func askButtonPress(_ sender: UIButton) {
    
    newBallMethod()
        
    }
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) { newBallMethod()
    }
    func newBallMethod() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named:
            ballArray[randomBallNumber])
        
    }

}

