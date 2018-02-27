//
//  UserViewControllerUndocumented.swift
//  402Proj
//
//  Created by Mackenzie Tjogas on 1/29/18.
//  Copyright © 2018 Mackenzie Tjogas. All rights reserved.
//

import UIKit

class UserViewControllerUndocumented: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showEmergencyMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "You will now need to enter your pin",
    message: "This call cannot be stopped", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Enter", style:
            UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
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
