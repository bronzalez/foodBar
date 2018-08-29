//
//  ViewController.swift
//  foodBar
//
//  Created by BRIAN GONZALEZ on 8/28/18.
//  Copyright © 2018 BRIAN GONZALEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabel.text = String(number)
    }

    
    
    @IBAction func onTap(_ sender: Any) {
        if number % 3 == 0 && number % 5 == 0 {
            view.backgroundColor = .red
            displayLabel.text = "foo\nbar"
        }
        else if number % 3 == 0 {
            view.backgroundColor = .green
            displayLabel.text = "foo"
        }
        else if number % 5 == 0 {
            view.backgroundColor = .yellow
            displayLabel.text = "bar"
        }
        else {
            view.backgroundColor = .black
            displayLabel.text = String(number)
        }
    }
    
    @IBAction func onLongPress(_ sender: Any) {
        number = 0
        displayLabel.text = String(number)
        view.backgroundColor = .black
    }
    
}













