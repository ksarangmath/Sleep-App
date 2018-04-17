//
//  AnswerViewController.swift
//  REALSLEEPAPP
//
//  Created by ksarangmath on 12/14/17.
//  Copyright © 2017 ksarangmath. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    
    
    
    @IBOutlet weak var sleepTime1Label: UILabel!
    @IBOutlet weak var sleepTime2Label: UILabel!
    @IBOutlet weak var sleepTime3Label: UILabel!
    @IBOutlet weak var sleepTime4Label: UILabel!
    @IBOutlet weak var sleepTime5Label: UILabel!
    
    var hour = 0
    var minute = 0
    var isAM = true
    var timeToSleep = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        sleepTime1Label.backgroundColor = UIColor.green.withAlphaComponent(0.5)
        sleepTime2Label.backgroundColor = UIColor.green.withAlphaComponent(0.5)
        sleepTime3Label.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        sleepTime4Label.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        sleepTime5Label.backgroundColor = UIColor.red.withAlphaComponent(0.5)

        var totalMinutes = 0
        if (isAM)
        {
            if (hour == 12)
            {
                totalMinutes = minute
            }
            else
            {
                totalMinutes = hour * 60 + minute
            }
        }
        else
        {
            if (hour < 12)
            {
                totalMinutes = (hour + 12) * 60 + minute
            }
            else
            {
                totalMinutes = hour * 60 + minute
            }
        }
        
        var sleepTime1 = 0
        var isAM1 = true
        var hour1 = 0
        var minute1 = 0
        sleepTime1 = totalMinutes - (90 * 6) - timeToSleep
        if (sleepTime1 < 0)
        {
            sleepTime1 = sleepTime1 + 1440
            hour1 = (sleepTime1 / 60) - 12
            minute1 = sleepTime1 % 60
            isAM1 = false
        }
        else if (sleepTime1 >= 720)
        {
            hour1 = sleepTime1 / 60
            if (hour1 > 12)
            {
                hour1 = hour1 - 12
            }
            minute1 = sleepTime1 % 60
            isAM1 = false
        }
        else
        {
            hour1 = sleepTime1 / 60
            minute1 = sleepTime1 % 60
            isAM1 = true
        }
        
        if (minute1 < 10)
        {
            if (isAM1)
            {
                if (hour1 == 0)
                {
                    sleepTime1Label.text = String(12) + ":0" + String(minute1) + " AM"
                }
                else
                {
                    sleepTime1Label.text = String(hour1) + ":0" + String(minute1) + " AM"
                }
            }
            else
            {
                if (hour1 == 0)
                {
                    sleepTime1Label.text = String(12) + ":0" + String(minute1) + " PM"
                }
                else
                {
                    sleepTime1Label.text = String(hour1) + ":0" + String(minute1) + " PM"
                }
            }
        }
        else
        {
            if (isAM1)
            {
                if (hour1 == 0)
                {
                    sleepTime1Label.text = String(12) + ":" + String(minute1) + " AM"
                }
                else
                {
                    sleepTime1Label.text = String(hour1) + ":" + String(minute1) + " AM"
                }
            }
            else
            {
                if (hour1 == 0)
                {
                    sleepTime1Label.text = String(12) + ":" + String(minute1) + " PM"
                }
                else
                {
                    sleepTime1Label.text = String(hour1) + ":" + String(minute1) + " PM"
                }
            }
        }
        
        
        var sleepTime2 = 0
        var isAM2 = true
        var hour2 = 0
        var minute2 = 0
        sleepTime2 = totalMinutes - (90 * 5) - timeToSleep
        if (sleepTime2 < 0)
        {
            sleepTime2 = sleepTime2 + 1440
            hour2 = (sleepTime2 / 60) - 12
            minute2 = sleepTime2 % 60
            isAM2 = false
        }
        else if (sleepTime2 >= 720)
        {
            hour2 = sleepTime2 / 60
            if (hour2 > 12)
            {
                hour2 = hour2 - 12
            }
            minute2 = sleepTime2 % 60
            isAM2 = false
        }
        else
        {
            hour2 = sleepTime2 / 60
            minute2 = sleepTime2 % 60
            isAM2 = true
        }
        
        if (minute2 < 10)
        {
            if (isAM2)
            {
                if (hour2 == 0)
                {
                    sleepTime2Label.text = String(12) + ":0" + String(minute2) + " AM"
                }
                else
                {
                    sleepTime2Label.text = String(hour2) + ":0" + String(minute2) + " AM"
                }
            }
            else
            {
                if (hour2 == 0)
                {
                    sleepTime2Label.text = String(12) + ":0" + String(minute2) + " PM"
                }
                else
                {
                    sleepTime2Label.text = String(hour2) + ":0" + String(minute2) + " PM"
                }
            }
        }
        else
        {
            if (isAM2)
            {
                if (hour2 == 0)
                {
                    sleepTime2Label.text = String(12) + ":" + String(minute2) + " AM"
                }
                else
                {
                    sleepTime2Label.text = String(hour2) + ":" + String(minute2) + " AM"
                }
            }
            else
            {
                if (hour2 == 0)
                {
                    sleepTime2Label.text = String(12) + ":" + String(minute2) + " PM"
                }
                else
                {
                    sleepTime2Label.text = String(hour2) + ":" + String(minute2) + " PM"
                }
            }
        }
        
        
        var sleepTime3 = 0
        var isAM3 = true
        var hour3 = 0
        var minute3 = 0
        sleepTime3 = totalMinutes - (90 * 4) - timeToSleep
        if (sleepTime3 < 0)
        {
            sleepTime3 = sleepTime3 + 1440
            hour3 = (sleepTime3 / 60) - 12
            minute3 = sleepTime3 % 60
            isAM3 = false
        }
        else if (sleepTime3 >= 720)
        {
            hour3 = sleepTime3 / 60
            if (hour3 > 12)
            {
                hour3 = hour3 - 12
            }
            minute3 = sleepTime3 % 60
            isAM3 = false
        }
        else
        {
            hour3 = sleepTime3 / 60
            minute3 = sleepTime3 % 60
            isAM3 = true
        }
        
        if (minute3 < 10)
        {
            if (isAM3)
            {
                if (hour3 == 0)
                {
                    sleepTime3Label.text = String(12) + ":0" + String(minute3) + " AM"
                }
                else
                {
                    sleepTime3Label.text = String(hour3) + ":0" + String(minute3) + " AM"
                }
            }
            else
            {
                if (hour3 == 0)
                {
                    sleepTime3Label.text = String(12) + ":0" + String(minute3) + " PM"
                }
                else
                {
                    sleepTime3Label.text = String(hour3) + ":0" + String(minute3) + " PM"
                }
            }
        }
        else
        {
            if (isAM3)
            {
                if (hour3 == 0)
                {
                    sleepTime3Label.text = String(12) + ":" + String(minute3) + " AM"
                }
                else
                {
                    sleepTime3Label.text = String(hour3) + ":" + String(minute3) + " AM"
                }
            }
            else
            {
                if (hour3 == 0)
                {
                    sleepTime3Label.text = String(12) + ":" + String(minute3) + " PM"
                }
                else
                {
                    sleepTime3Label.text = String(hour3) + ":" + String(minute3) + " PM"
                }
            }
        }
        
        
        
        var sleepTime4 = 0
        var isAM4 = true
        var hour4 = 0
        var minute4 = 0
        sleepTime4 = totalMinutes - (90 * 3) - timeToSleep
        if (sleepTime4 < 0)
        {
            sleepTime4 = sleepTime4 + 1440
            hour4 = (sleepTime4 / 60) - 12
            minute4 = sleepTime4 % 60
            isAM4 = false
        }
        else if (sleepTime4 >= 720)
        {
            hour4 = sleepTime4 / 60
            if (hour4 > 12)
            {
                hour4 = hour4 - 12
            }
            minute4 = sleepTime4 % 60
            isAM4 = false
        }
        else
        {
            hour4 = sleepTime4 / 60
            minute4 = sleepTime4 % 60
            isAM4 = true
        }
        
        if (minute4 < 10)
        {
            if (isAM4)
            {
                if (hour4 == 0)
                {
                    sleepTime4Label.text = String(12) + ":0" + String(minute4) + " AM"
                }
                else
                {
                    sleepTime4Label.text = String(hour4) + ":0" + String(minute4) + " AM"
                }
            }
            else
            {
                if (hour4 == 0)
                {
                    sleepTime4Label.text = String(12) + ":0" + String(minute4) + " PM"
                }
                else
                {
                    sleepTime4Label.text = String(hour4) + ":0" + String(minute4) + " PM"
                }
            }
        }
        else
        {
            if (isAM4)
            {
                if (hour4 == 0)
                {
                    sleepTime4Label.text = String(12) + ":" + String(minute4) + " AM"
                }
                else
                {
                    sleepTime4Label.text = String(hour4) + ":" + String(minute4) + " AM"
                }
            }
            else
            {
                if (hour4 == 0)
                {
                    sleepTime4Label.text = String(12) + ":" + String(minute4) + " PM"
                }
                else
                {
                    sleepTime4Label.text = String(hour4) + ":" + String(minute4) + " PM"
                }
            }
        }

        
        var sleepTime5 = 0
        var isAM5 = true
        var hour5 = 0
        var minute5 = 0
        sleepTime5 = totalMinutes - (90 * 2) - timeToSleep
        if (sleepTime5 < 0)
        {
            sleepTime5 = sleepTime5 + 1440
            hour5 = (sleepTime5 / 60) - 12
            minute5 = sleepTime5 % 60
            isAM5 = false
        }
        else if (sleepTime5 >= 720)
        {
            hour5 = sleepTime5 / 60
            if (hour5 > 12)
            {
                hour5 = hour5 - 12
            }
            minute5 = sleepTime5 % 60
            isAM5 = false
        }
        else
        {
            hour5 = sleepTime5 / 60
            minute5 = sleepTime5 % 60
            isAM5 = true
        }
        
        if (minute5 < 10)
        {
            if (isAM5)
            {
                if (hour5 == 0)
                {
                    sleepTime5Label.text = String(12) + ":0" + String(minute5) + " AM"
                }
                else
                {
                    sleepTime5Label.text = String(hour5) + ":0" + String(minute5) + " AM"
                }
            }
            else
            {
                if (hour5 == 0)
                {
                    sleepTime5Label.text = String(12) + ":0" + String(minute5) + " PM"
                }
                else
                {
                    sleepTime5Label.text = String(hour5) + ":0" + String(minute5) + " PM"
                }
            }
        }
        else
        {
            if (isAM5)
            {
                if (hour5 == 0)
                {
                    sleepTime5Label.text = String(12) + ":" + String(minute5) + " AM"
                }
                else
                {
                    sleepTime5Label.text = String(hour5) + ":" + String(minute5) + " AM"
                }
            }
            else
            {
                if (hour5 == 0)
                {
                    sleepTime5Label.text = String(12) + ":" + String(minute5) + " PM"
                }
                else
                {
                    sleepTime5Label.text = String(hour5) + ":" + String(minute5) + " PM"
                }
            }
        }

    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
