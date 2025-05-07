//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
<<<<<<< HEAD
=======
>>>>>>> origin/main
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7];
    
    @IBOutlet weak var textLabel: UILabel!;
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var secondsRemaining = 60;
    
    var timer = Timer();

    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 1.0;
        
<<<<<<< HEAD
        
        timer.invalidate();
        
=======
        timer.invalidate();
        
>>>>>>> origin/main
        let hardness = sender.currentTitle!;
        
        secondsRemaining = eggTimes[hardness]!;
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true);
    }
    
    @objc func updateTimer() {
        if(secondsRemaining > 0) {
            print("\(secondsRemaining) seconds.");
            secondsRemaining -= 1;
        }else {
            timer.invalidate();
            textLabel.text = "DONE!"
        }
    }
    
}
