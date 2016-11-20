//
//  SignUpViewController.swift
//  Project3
//
//  Created by Sona Jeswani on 11/12/16.
//  Copyright © 2016 Sona Jeswani. All rights reserved.
//

import UIKit
import Firebase
//import FirebaseAnalytics

class SignUpViewController: UIViewController {
    
    var emailField: UITextField!
    var passwordField: UITextField!
    var nameField: UITextField!
    var signUpButton:UIButton!
    //let dbRef = FIRDatabase.database().reference
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTextFields()
        setUpButton()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpTextFields() {
        
        
        nameField = UITextField(frame: CGRect(x: 40, y: 100, width: UIScreen.mainScreen().bounds.width - 80, height: 45))
        emailField.placeholder = "Full Name"
        emailField.alpha = 0.4
        
        
        
        emailField = UITextField(frame: CGRect(x: 40, y: 120, width: UIScreen.mainScreen().bounds.width - 80, height: 45))
        emailField.placeholder = "Email"
        emailField.alpha = 0.4
        emailField.font = UIFont.systemFontOfSize(15)
        emailField.layer.cornerRadius = 3
        //emailField.delegate = self
        emailField.contentVerticalAlignment = .Center
        emailField.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(emailField)
        
        passwordField = UITextField(frame: CGRect(x: 40, y: 180, width: UIScreen.mainScreen().bounds.width - 80, height: 45))
        passwordField.placeholder = "Password"
        passwordField.alpha = 0.4
        passwordField.font = UIFont.systemFontOfSize(15)
        passwordField.borderStyle = .None
        passwordField.layer.cornerRadius = 3
        passwordField.secureTextEntry = true
        passwordField.contentVerticalAlignment = .Center
        passwordField.backgroundColor = UIColor.whiteColor()
        //passwordField.delegate = self
        
    }
    
    
//    func signupUser(email: String, password: String, name: String) -> Void {
//        
//        FIRAuth.auth()!.createUserWithEmail(email, password: password, completion: { user, error in
//            if error == nil {
//                //user?.photoURL
//                
//                dbRef().child("Users/\(user!.uid)/email").setValue(email)
//                dbRef().child("Users/\(user!.uid)/name").setValue(name)
//
//
//            }
//        })
//    }
    
    
    func setUpButton() {
    
    let signUpButton = UIButton(frame: CGRect(x: 100, y: 80, width: 120, height: 40))
    signUpButton.backgroundColor = UIColor.blueColor()
    signUpButton.setTitle("Login", forState: .Normal)
    signUpButton.layer.cornerRadius = 3
    //signUpButton.addTarget(self, action: #selector(SignUpViewController.signupUser), forControlEvents: .TouchUpInside)
    self.view.addSubview(signUpButton)
        
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
