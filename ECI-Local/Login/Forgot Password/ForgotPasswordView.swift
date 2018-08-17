//
//  ForgotPasswordView.swift
//  ECI-Local
//
//  Created by Vidhyapathi Kandhasamy on 8/16/18.
//  Copyright © 2018 aezion. All rights reserved.
//

import UIKit

class ForgotPasswordView: UIViewController {

    @IBOutlet weak var registeredView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registeredView.setRoundCorners(.right)
    }
   
    @IBAction func backTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendLingTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "resendLinkView") as! ResendLinkView
        self.present(vc, animated: true)
    }
}
