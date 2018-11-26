//
//  ViewController.swift
//  Magic 8 Ball Game
//
//  Created by Vartotojas on 26/11/2018.
//  Copyright © 2018 Michail Dudelev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballImageIndex : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askbutton(_ sender: UIButton) {
        ballimageUpdate()
    }
    func ballimageUpdate(){
        ballImageIndex = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballArray[ballImageIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ballimageUpdate()
    }
}

