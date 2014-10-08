//
//  MetronomeViewController.swift
//  Metronome-Swift
//
//  Created by Nikolas Gelo on 10/8/14.
//  Copyright (c) 2014 Nikolas Gelo. All rights reserved.
//

import UIKit

class MetronomeViewController: UIViewController {
    
    @IBOutlet weak var tempoLabel: UILabel!
    @IBOutlet weak var tempoStepper: UIStepper!
    
    var metronomeIsOn = false
    
    var tempo: Int = 60 {
        didSet {
            tempoLabel.text = "\(tempo)"
            tempoStepper.value = Double(tempo)
        }
    }
    
    @IBAction func tempoChanged(var tempoStepper: UIStepper) {
        // Save the new tempo.
        tempo = Int(tempoStepper.value)
    }
    
    @IBAction func toggleMetronome(var toggleMetronomeButton: UIButton) {
        // If the metronome is currently on, stop the metronome and change
        // the image of the toggle metronome button to the "Play" image and
        // its tint color to green.
        if metronomeIsOn {
            // Mark the metronome as off.
            metronomeIsOn = false
            
            // TODO: Stop the metronome sound.
            
            // Change the toggle metronome button's image to "Play" and tint
            // color to green.
            toggleMetronomeButton.setImage(UIImage(named: "Play"), forState: .Normal)
            toggleMetronomeButton.tintColor = UIColor.greenColor()
        }
        
        // If the metronome is currently off, start the metronome and change
        // the image of the toggle metronome button to the "Start" image and
        // its tint color to green
        else {
            // Mark the metronome as on.
            metronomeIsOn = true
            
            // TODO: Start the metronome sound.
            
            // Change the toggle metronome button's image to "Stop" and tint
            // color to red.
            toggleMetronomeButton.setImage(UIImage(named: "Stop"), forState: .Normal)
            toggleMetronomeButton.tintColor = UIColor.redColor()
        }
    }

    // MARK: - UIViewController
    // MARK: Managing the View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the inital value of the tempo.
        tempo = 120
    }
}

