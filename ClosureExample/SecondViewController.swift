//
//  SecondViewController.swift
//  ClosureExample
//
//  Created by apple on 08/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    typealias completionHandler = ([String:Any]) -> Void
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var surnameField: UITextField!
    
    var completion:completionHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onTapOfSave(_ sender: UIButton) {
        guard let name = nameField.text else {return}
        guard let surname = surnameField.text else {return}
        let dict = ["name": name, "surname":surname]
        completion?(dict)
        self.navigationController?.popViewController(animated: true)
    }
    
}
