//
//  SecondViewController.swift
//  he
//
//  Created by iosdev on 9/2/17.
//  Copyright © 2017 IS535. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addItem(_ sender: Any) {
        let object = generateModel()
        model.append(object)
    }
    func generateModel() -> Model {
        let currentDate = Date()
        let titleText = input.text
        let modelObject = Model(date: currentDate, title: titleText!)
        return modelObject
    }
}


