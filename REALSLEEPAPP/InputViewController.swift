//
//  InputViewController.swift
//  REALSLEEPAPP
//
//  Created by ksarangmath on 12/14/17.
//  Copyright © 2017 ksarangmath. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    
    @IBOutlet weak var hourStepper: UIStepper!
    @IBOutlet weak var minuteStepper: UIStepper!
    @IBOutlet weak var morningNightController: UISegmentedControl!
    @IBOutlet weak var timeToSleepStepper: UIStepper!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var morningNightLabel: UILabel!
    @IBOutlet weak var timeToSleepLabel: UILabel!
    
    var hour = 12
    var minute = 0
    var timeToSleep = 0
    var isAM = true
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        calculateButton.backgroundColor = UIColor.blue.withAlphaComponent(0.25)
        calculateButton.layer.cornerRadius = 20
        hourStepper.wraps = true
        hourStepper.autorepeat = true
        minuteStepper.wraps = true
        minuteStepper.autorepeat = true
        timeToSleepStepper.wraps = true
        timeToSleepStepper.autorepeat = true
        
        hourLabel.text = "12"
        minuteLabel.text = "00"
        morningNightLabel.text = "AM"
        timeToSleepLabel.text = "0 minutes"
    }

    
    
    @IBAction func hourStepperChanged(_ sender: UIStepper)
    {
        hour = Int(sender.value)
        hourLabel.text = String(hour)
    }
    
    @IBAction func minuteStepperChanged(_ sender: UIStepper)
    {
        minute = Int(sender.value)
        if (minute < 10)
        {
            minuteLabel.text = "0" + String(minute)
        }
        else
        {
            minuteLabel.text = String(minute)
        }
    }
    
    
    @IBAction func morningNightControllerChanged(_ sender: UISegmentedControl)
    {
        if morningNightController.selectedSegmentIndex == 0
        {
            isAM = true
            morningNightLabel.text = "AM"
        }
        else
        {
            isAM = false
            morningNightLabel.text = "PM"
        }
    }
    
    
    
    @IBAction func timeToSleepStepperChanged(_ sender: UIStepper)
    {
        timeToSleep = Int(sender.value)
        
            timeToSleepLabel.text = String(timeToSleep) + " minutes"
        
    }
    
    
    
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            let nvc = segue.destination as! AnswerViewController
            nvc.hour = hour
            nvc.minute = minute
            nvc.isAM = isAM
            nvc.timeToSleep = timeToSleep
            
        }
        
        
        
        /*
         var sleepTime1 = 0
        var isAM1 = true
        var hour1 = 0
        var minute1 = 0
       
        
        sleepTime1 = totalMinutes - (90 * 6)
        if (sleepTime1 < 0)
        {
            sleepTime1 = sleepTime1 + 1440
            isAM1 = false
            hour1 = (sleepTime1 / 60) - 12
            minute1 = sleepTime1 % 60
        }
         */

    
    
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
