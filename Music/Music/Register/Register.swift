//
//  Register.swift
//  Music
//
//  Created by Francesca Pellegrino on 18/10/2018.
//  Copyright © 2018 VladislavSena. All rights reserved.
//

import UIKit

class Register: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let pickerInstruments = ["Piano","Violin","Bass","Guitar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        pickerView.delegate = self
        //        pickerView.dataSource = self
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerInstruments[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerInstruments.count
    }
}
