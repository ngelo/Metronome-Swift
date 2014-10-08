//
//  MetronomeViewController.swift
//  Metronome-Swift
//
//  Created by Nikolas Gelo on 10/8/14.
//  Copyright (c) 2014 Nikolas Gelo. All rights reserved.
//

import UIKit

// MARK: - MetronomeViewController

class MetronomeViewController: UIViewController {
    
    @IBOutlet weak var tempoLabel: UILabel!
    @IBOutlet weak var tempoStepper: UIStepper!
    
    var tempo: Int! /*{
        set {
            self.tempo = newValue
            tempoLabel.text = "\(tempo)"
        } get {
            return self.tempo
        }
    }*/

    // MARK: - UIViewController
    // MARK: Managing the View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempo = 120
        
        tempoLabel.text = "\(tempo)"
    }
}

