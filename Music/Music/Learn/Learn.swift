//
//  Learn.swift
//  Music
//
//  Created by Florin Aparaschivei on 17/10/2018.
//  Copyright © 2018 VladislavSena. All rights reserved.
//
import Foundation
import UIKit

class Learn: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var ui_tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ui_tableview.dataSource = self // Tells the tableview that the object Learn is its data source
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "test-cell", for: indexPath)
        
        if let titleLabel = cell.textLabel {
            titleLabel.text = "Music theory"
        }
        
        if let detailLabel = cell.detailTextLabel {
            detailLabel.text = "Theory purpose"
        }
        return cell
    }
    
    

}
