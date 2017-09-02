//
//  FirstViewController.swift
//  he
//
//  Created by iosdev on 9/2/17.
//  Copyright © 2017 IS535. All rights reserved.
//

import UIKit
var model: [Model] = []
var modelObject: Model?

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var MyTableView: UITableView!

    override func viewDidAppear(_ animated: Bool) {
        MyTableView.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! tableViewCell
        cell.titleCell.text = model[indexPath.row].title
        cell.dateCell.text = model[indexPath.row].dateString
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let object = model[indexPath.row]
        performSegue(withIdentifier: "cell", sender: object)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ThirdViewController {
            let object = sender as! Model
            vc.modelObject = object
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

