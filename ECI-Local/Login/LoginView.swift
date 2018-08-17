//
//  ViewController.swift
//  ECI-Local
//
//  Created by Vidhyapathi Kandhasamy on 8/16/18.
//  Copyright © 2018 aezion. All rights reserved.
//

import UIKit

class LoginView: UIViewController {

    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.setRoundCorners(.right)
        passwordView.setRoundCorners(.right)
//        loginBtn.setRoundCorners(.all)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "forgotPasswordView") as! ForgotPasswordView
        self.present(vc, animated: true)
    }
    


}
