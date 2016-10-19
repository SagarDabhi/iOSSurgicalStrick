//
//  pickerview.swift
//  Tableviewswift
//
//  Created by Perfection Developer on 19/10/16.
//  Copyright © 2016 Perfection Developer. All rights reserved.
//

import Foundation

import UIKit

class pickerview : UIViewController ,UIPickerViewDelegate ,UIPickerViewDataSource
{
    @IBOutlet weak var picker: UIPickerView!
    var pickerDataSource = ["White", "Red", "Green", "Blue"]
    
    override func viewDidLoad() {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.white;
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.red;
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.green;
        }
        else
        {
            self.view.backgroundColor = UIColor.blue;
        }
    }
}
