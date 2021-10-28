//
//  ViewController.swift
//  testapp
//
//  Created by Muhammad Akhtar on 27/10/2021.
//

import UIKit

class ViewController: UIViewController {

    var xVal = 0
    var yVal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func comnpareValue() -> Bool {
        if xVal > yVal {
            return true
        } else {
            return false
        }
    }

}

