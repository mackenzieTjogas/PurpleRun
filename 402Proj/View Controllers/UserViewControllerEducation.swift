//
//  UserViewControllerEducation.swift
//  402Proj
//
//  Created by Mackenzie Tjogas on 1/29/18.
//  Copyright © 2018 Mackenzie Tjogas. All rights reserved.
//

import UIKit

class UserViewControllerEducation: UIViewController {

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
    
    @IBAction func exampleButton(sender: AnyObject) {
        if let url = URL(string: "https://www.speakcdn.com/assets/2497/domestic_violence_and_physical_abuse_ncadv.pdf") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton2(sender: AnyObject) {
        if let url = URL(string: "https://www.speakcdn.com/assets/2497/domestic_violence_and_psychological_abuse_ncadv.pdf") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton3(sender: AnyObject) {
        if let url = URL(string: "https://www.speakcdn.com/assets/2497/domestic_violence_and_economic_abuse_ncadv.pdf") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton4(sender: AnyObject) {
        if let url = URL(string: "https://www.betterhelp.com/advice/abuse/would-you-recognize-verbal-abuse-heres-what-you-need-to-know/") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton5(sender: AnyObject) {
        if let url = URL(string: "https://www.domesticshelters.org/domestic-violence-articles-information/when-abusers-use-sexual-abuse-to-control#.WsrJUZPwbaY") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton6(sender: AnyObject) {
        if let url = URL(string: "https://www.speakcdn.com/assets/2497/domestic_violence_and_stalking_ncadv.pdf") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
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
