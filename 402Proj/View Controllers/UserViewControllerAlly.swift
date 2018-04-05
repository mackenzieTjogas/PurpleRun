//
//  UserViewControllerAlly.swift
//  402Proj
//
//  Created by Mackenzie Tjogas on 1/29/18.
//  Copyright © 2018 Mackenzie Tjogas. All rights reserved.
//

// This will call the APIS and return information about being an ally 

import UIKit
// import TTTAttributedLabel
// import ActiveLabel

class UserViewControllerAlly: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func exampleButton(sender: AnyObject) {
        if let url = URL(string: "https://ncadv.org/dynamics-of-abuse") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func makeCall(phoneNum: String) {
        if let url = URL(string: "tel://\(phoneNum)"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @IBAction func showEmergencyMessage(sender: UIButton) {
        let phoneNumber : String = "911"
        makeCall(phoneNum : phoneNumber)
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
