//
//  LoginViewController.swift
//  FriendsCircle
//
//  Created by Le Huynh Anh Tien on 8/17/16.
//  Copyright © 2016 Huynh Tri Dung. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    var verifyNum: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberTextField.text = "+841696359605";
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    
    @IBAction func LoginTapped(sender: AnyObject) {
        if let phone = phoneNumberTextField.text {
            getVerifyPhoneNumber(phone)
        }
    }
    
    func getVerifyPhoneNumber(phone:String) {
        
        let loginClient = LoginClient()
        //        let userRef = loginClient.getRefFirebaseByPhoneNumber(phone)
        loginClient.getVerifyPhoneNumber({ () -> () in
            print("I get verify in")
            self.performSegueWithIdentifier("verifySegue", sender: nil)
            }, failure: { (error) in
                print(error)
            }, phone: phone)
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "verifySegue" {
            let verifyVC = segue.destinationViewController as! VerifyViewController
            verifyVC.phoneNum = phoneNumberTextField.text!
        }
    }
}
