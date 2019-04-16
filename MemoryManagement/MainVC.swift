//
//  ViewController.swift
//  MemoryManagement
//
//  Created by Caroline Davis on 16/4/19.
//  Copyright © 2019 Caroline Davis. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var food: UITextField!
    @IBOutlet weak var colour: UITextField!
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var done: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        food.delegate = self
        colour.delegate = self
        name.delegate = self
        
    }

    @IBAction func generateNickname(_ sender: Any) {
    
       
        
    }
    
    deinit {
        print("deallocating happened")
    }
    

}

