//
//  ViewController.swift
//  402Proj
//
//  Created by Mackenzie Tjogas on 1/28/18.
//  Copyright © 2018 Mackenzie Tjogas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "You will now need to enter your pin",
    message: "You will only get 2 trys", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Enter", style:
    UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}

