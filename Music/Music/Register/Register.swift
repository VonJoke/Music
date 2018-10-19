//
//  Register.swift
//  Music
//
//  Created by Francesca Pellegrino on 18/10/2018.
//  Copyright © 2018 VladislavSena. All rights reserved.
//

import UIKit

class Register: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var instrumentText: UITextField!
    
    let pickerInstruments = ["Piano","Violin","Bass","Guitar"]
    var selected: String?
    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPicker()
    }
    
    func createPicker() {
        picker.delegate = self
        
        instrumentText.inputView = picker
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = pickerInstruments[row]
        instrumentText.text = selected
        
        self.view.endEditing(true)
    }
}

