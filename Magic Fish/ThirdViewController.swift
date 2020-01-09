//
//  ThirdViewController.swift
//  Magic Fish
//
//  Created by Ella Wickstrom on 12/11/19.
//  Copyright © 2019 Ella Wickstrom. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var nameClass = NameClass()
    var answers = ["for sure dude!", "that's a BIG yes!", "definitely Bro!", "of course!", "I think so.", "maybe??", "try asking later.", "wouldn't you like to know.", "idk man :/", "who knows?", "that's a BIG no.", "probably not.", "I think not.", "don't count on it man.", "why would you even ask that?"]
    
    override func viewDidLoad() { //as soon as the view opens
        super.viewDidLoad()

        textView.text = nameClass.returnName() + ", \(answers.randomElement()!)" //user's name and the answer appear
        
    }


}
