//
//  ThirdViewController.swift
//  he
//
//  Created by iosdev on 9/2/17.
//  Copyright © 2017 IS535. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var dateDetail: UILabel!
    @IBOutlet weak var titleDetail: UILabel!
    var modelObject: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateDetail.text = modelObject?.title
        titleDetail.text = modelObject?.dateString
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
