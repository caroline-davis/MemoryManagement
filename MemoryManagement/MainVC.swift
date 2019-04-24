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
    var nickname: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        food.delegate = self
        colour.delegate = self
        name.delegate = self
    }
    
    func createName () {
        var first = food.text?.prefix(1)
        var second = colour.text?.suffix(2)
        var third = name.text?.suffix(3)
        if first == "" || second == "" || third == "" {
            first = "sp"
            second = "in"
            third = "ngy"
        }
        nickname = String(first! + second! + third!)
    }

    override func prepare (for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "ToDetailVC" {
                if let destination = segue.destination as? DetailVC {
            destination.generatedName = self.nickname
            }
        }
    }
    
    @IBAction func generateNickname(_ sender: Any) {
        createName()
        self.performSegue(withIdentifier: "ToDetailVC", sender: self)

    }
    deinit {
        print("deallocating happened")
    }

}
