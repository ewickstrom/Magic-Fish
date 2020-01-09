//
//  ViewController.swift
//  Magic Fish
//
//  Created by Ella Wickstrom on 12/11/19.
//  Copyright © 2019 Ella Wickstrom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onBubbleTapped(_ sender: Any) { //takes user to the next view controller
        performSegue(withIdentifier: "firstSegue", sender: Any?.self)
    }
    
    
    
}

