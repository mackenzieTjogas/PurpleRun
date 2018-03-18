//
//  UserViewControllerSettings.swift
//  402Proj
//
//  Created by Mackenzie Tjogas on 2/18/18.
//  Copyright © 2018 Mackenzie Tjogas. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class UserViewControllerSettings: UIViewController {
    
    let LANGUAGE_API = "http://frengly.com/frengly/data/translateREST"
    
    // make this model file: 
    // let translatedLanguage = LanguageDataModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    //    @IBAction func showEmergencyMessage(sender: UIButton) {
    //        let alertController = UIAlertController(title: "You will now need to enter your pin",
    //                                                message: "This call cannot be stopped", preferredStyle: UIAlertControllerStyle.alert)
    //        alertController.addAction(UIAlertAction(title: "Enter", style:
    //            UIAlertActionStyle.default, handler: nil))
    //        present(alertController, animated: true, completion: nil)
    //    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
