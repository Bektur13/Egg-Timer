//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7];
    
    @IBOutlet weak var textLabel: UILabel!;
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var totalTime = 0;
    var secondsPassed = 0;
    
    var timer = Timer();

    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 1.0;
        
        timer.invalidate();
    
        let hardness = sender.currentTitle!;
        
        totalTime = eggTimes[hardness]!;
        
        progressBar.progress = 0.0;
        secondsPassed = 0;
        
        textLabel.text = hardness;
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true);
    }
    
    @objc func updateTimer() {
        if(secondsPassed < totalTime) {
            secondsPassed += 1;
            progressBar.progress = Float(secondsPassed) / Float(totalTime);
        }else {
            timer.invalidate();
            textLabel.text = "DONE!"
        }
    }
    
}
