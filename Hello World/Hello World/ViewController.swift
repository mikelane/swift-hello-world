//
//  ViewController.swift
//  Hello World
//
//  Created by Michael Lane on 9/5/15.
//  Copyright © 2015 Michael Lane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    @IBAction func submit(sender: AnyObject) {
        let x = Int(textField.text!)
        switch x {
        case let y where y < 0: label.text = "Invalid age"
        case let y where 0 < y && y <= 10: label.text = "A youngster"
        case let y where y == 11 || y == 12: label.text = "Ack! Tween!"
        case let y where 13 <= y && y < 20: label.text = "Double ack! Teenager"
        case let y where 20 <= y && y < 30 && y != 23: label.text = "Twenty-something. Getting better."
        case let y where y == 23: label.text = "Nobody likes you when you're 23."
        case let y where y >= 30: label.text = "Get a job!"
        default: label.text = "Invalid!"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print("Hello, World")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

