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
        // call the enter function below in the handler ^^
        present(alertController, animated: true, completion: nil)
        // Eventually, when 'Enter' is hit, a pin code/password input
        // box needs to appear. Then when the password is inputted and the user
        // clicks 'submit' they should be taken to the second page. Right now this is done
        // by the 'ChangeLater' button on the top right of homepage. This button won't be
        // needed once this is implemented correctly. 
    }
    
    func enter() {
        performSegue(withIdentifier: "testSegue", sender: self)
    }
    
    @IBAction func showEmergencyMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "You will now need to enter your pin",
    message: "This call cannot be stopped", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Call", style:
            UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}

