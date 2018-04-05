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
    
    @IBAction func exampleButton(sender: AnyObject) {
        if let url = URL(string: "https://www.uscis.gov/news/fact-sheets/information-legal-rights-available-immigrant-victims-domestic-violence-united-states-and-facts-about-immigrating-marriage-based-visa-fact-sheet") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton2(sender: AnyObject) {
        if let url = URL(string: "http://family.findlaw.com/domestic-violence/the-domestic-violence-green-card-immigrant-visa-petitions-for-vi.html") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton3(sender: AnyObject) {
        if let url = URL(string: "http://www.thehotline.org/is-this-abuse/abuse-and-immigrants/") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func exampleButton4(sender: AnyObject) {
        if let url = URL(string: "https://www.washingtonlawhelp.org/resource/domestic-violence-questions-and-answers-for-i") {
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
