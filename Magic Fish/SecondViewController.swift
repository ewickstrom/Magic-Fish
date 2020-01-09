//
//  SecondViewController.swift
//  Magic Fish
//
//  Created by Ella Wickstrom on 12/11/19.
//  Copyright © 2019 Ella Wickstrom. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var theName = ""
    var nameClass = NameClass()
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onButtonTapped(_ sender: Any) {
        if textField.text?.count != 0 { //if user input a name
            theName = String(textField.text!)
            nameClass.name = theName //store name in the custom swift class
            performSegue(withIdentifier: "secondSegue", sender: Any?.self)//take user to third view controller
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //tells computer what to do when it segues
        let dvc = segue.destination as! ThirdViewController
        dvc.nameClass = self.nameClass //sends name to next view controller
    }
    
    @IBAction func onViewTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true) //lets user tap screen to make keyboard disappear
    }
}
