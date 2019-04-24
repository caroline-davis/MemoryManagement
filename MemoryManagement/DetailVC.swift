//
//  DetailVC.swift
//  MemoryManagement
//
//  Created by Caroline Davis on 16/4/19.
//  Copyright © 2019 Caroline Davis. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var img: UIImageView!

     var generatedName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        nickname.text = generatedName

    }
    deinit {
        print("deallocating happened")
    }
}
