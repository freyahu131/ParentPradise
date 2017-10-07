//
//  DatePickerViewController.swift
//  生命靈數進階版
//
//  Created by mac on 2017/10/6.
//  Copyright © 2017年 justwithin. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    
    
    @IBOutlet var DatePicker: UIDatePicker!
    
    @IBAction func DatePickerValueChange(_ sender: UIDatePicker) {
    }
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "YYYYMMdd"
    let birthday = dateFormatter.string(from:DatePicker.date)
    
    
    var lifecode1: Int = 0
    var lifecode2: Int = 0
    var lifecode3: Int = 0
    
    
    for i in birthday {
    let number = Int(String(i))
    lifecode1 = lifecode1 + number!
    print(lifecode1)
    }
    
    if lifecode1 < 10 {
    lifeCodeLabel.text = String(lifecode1)
    
    }
    else {
    
    let Code = String(Int(lifecode1))
    for index in Code {
    let Number = Int(String(index))
    lifecode2 = lifecode2 + Number!
    }
    if lifecode2 < 10 {
    lifeCodeLabel.text = String(lifecode2)
    
    
    }
    else {
    let Lifecode2 = String(Int(lifecode2))
    for i in Lifecode2 {
    let Supernumber = Int(String(i))
    lifecode3 = lifecode3 + Supernumber!
    lifeCodeLabel.text = String(lifecode3)
    
    
    }
    }
    
    }
    
    
    
    

    
    

 

  }
