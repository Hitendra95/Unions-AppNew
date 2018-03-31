//
//  ViewController.swift
//  Unions App
//
//  Created by Hitendra Dubey on 31/03/18.
//  Copyright © 2018 Hitendra Dubey. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import AccountKit

class loginViewController: UIViewController , FBSDKLoginButtonDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = FBSDKLoginButton()
        loginButton.center = self.view.center
        loginButton.readPermissions = ["Phone Number"]
        self.view.addSubview(loginButton)
        loginButton.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.logUserData()
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("logged out")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("Logged in")
    }
    func logUserData()
    {
        let graphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        graphRequest?.start{(connection,result,error)-> Void in
            if error != nil{
                print(error)
            }
            else{
                print(result)
            }
            
        }
    }
    
}

