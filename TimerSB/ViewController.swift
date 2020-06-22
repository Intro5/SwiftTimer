//
//  ViewController.swift
//  TimerSB
//
//  Created by Torin Bakos on 6/7/20.
//  Copyright © 2020 Torin Bakos. All rights reserved.
//
import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var secondsBox: NSTextField!
    
    @IBOutlet weak var progressBar: NSProgressIndicator!
    
    
    @IBAction func startButton(_ sender: NSButton) {
        let seconds: Double = secondsBox.doubleValue
        progressBar.minValue = 0.0
        progressBar.maxValue = seconds
        progressBar.doubleValue = 0.0
        
        print("Start!")
        print(seconds)
        var runCount: Double = 0
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.progressBar.doubleValue = runCount + 1
            print("Timer\(runCount)")
            runCount += 1
            if runCount == seconds {
                timer.invalidate()
            }
        }
    }
    
    @IBAction func resetButton(_ sender: NSButton) {
        print("Reset!")
        progressBar.doubleValue = 0.0

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.doubleValue = 0.0
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.

        }
    }


}

