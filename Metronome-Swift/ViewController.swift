//
//  ViewController.swift
//  Metronome-Swift
//
//  Created by Nikolas Gelo on 10/7/14.
//  Copyright (c) 2014 Nikolas Gelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tempoLabel: UILabel!
    
    var tempo: Int! /*{
        set {
            self.tempo = newValue
            tempoLabel.text = "\(tempo)"
        } get {
            return self.tempo
        }
    }*/

    // Mark - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempo = 120
        
        tempoLabel.text = "\(tempo)"
        // Do any additional setup after loading the view, typically from a nib.
    }
}

