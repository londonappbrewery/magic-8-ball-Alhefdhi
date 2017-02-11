//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ahmed Alhefdhi on ١٤ جما١، ١٤٣٨ هـ.
//  Copyright © ١٤٣٨ هـ Ahmed Alhefdhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let bollArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
    }
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: bollArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

