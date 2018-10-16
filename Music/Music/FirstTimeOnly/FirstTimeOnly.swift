//
//  ViewController.swift
//  Music
//
//  Created by Vladislav Sena on 15/10/2018.
//  Copyright © 2018 VladislavSena. All rights reserved.
//

import UIKit

class FirstTimeOnly: UIViewController {
    
    @IBAction func begin(_ sender: Any) {
        performSegue(withIdentifier: "start", sender: self)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
