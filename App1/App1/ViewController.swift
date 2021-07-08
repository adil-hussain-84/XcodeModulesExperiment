//
//  ViewController.swift
//  App1
//
//  Created by Adil Hussain on 06/07/2021.
//

import UIKit
import Framework1

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let someAwesomeFramework = SomeAwesomeFramework()
        
        let greeting = someAwesomeFramework.greetings()
        
        label.text = greeting
    }
}
