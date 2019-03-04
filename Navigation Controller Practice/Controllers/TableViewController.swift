//
//  TableViewController.swift
//  Navigation Controller Practice
//
//  Created by Denis Bystruev on 04/03/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - ... UIViewController Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SecondSegue" else { return }
        
        let controller = segue.destination as! ViewController
        
        controller.title = "\(Date())"
    }
    
    // MARK: - ... @IBAction
    @IBAction func buttonPressed() {
        performSegue(withIdentifier: "SecondSegue", sender: nil)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard segue.identifier == "UnwindSegue" else { return }
        
        let controller = segue.source as! ViewController
        
        let title = controller.title
        
        navigationItem.title = title
    }
}
