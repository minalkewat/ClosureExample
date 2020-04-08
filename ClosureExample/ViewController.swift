//
//  ViewController.swift
//  ClosureExample
//
//  Created by apple on 08/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var surnameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonNext(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(identifier: "SecondVC") as? SecondViewController
        vc?.completion = { dict in
            self.nameLbl.text = dict["name"] as? String
            self.surnameLbl.text = dict["surname"] as? String
        }
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

