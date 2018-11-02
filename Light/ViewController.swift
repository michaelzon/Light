//
//  ViewController.swift
//  Light
//
//  Created by Michael Zonneveld on 01/11/2018.
//  Copyright © 2018 Michael Zonneveld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var lightButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        
        updateUI()
    }
    
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
            lightButton.setTitleColor(UIColor.black, for: .normal)
        }
        else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(UIColor.white, for: .normal)
        }
    }
    
    
//    func setTitle(lightButton title: String?, for state: UIControl.State){
//        if lightOn {
//            lightButton.setTitle("Off", for: .normal)
//        }
//        else {
//            lightButton.setTitle("On", for: .normal)
//
//        }
//    }
    
    
}

