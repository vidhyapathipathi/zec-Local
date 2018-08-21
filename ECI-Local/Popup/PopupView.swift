
//
//  PopupView.swift
//  ECI-Local
//
//  Created by Vidhyapathi Kandhasamy on 8/20/18.
//  Copyright © 2018 aezion. All rights reserved.
//

import UIKit

class PopupView: UIViewController {

    @IBOutlet weak var screeningBtn: UIButton!
    
    @IBOutlet weak var documentBtn: UIButton!
    
    @IBOutlet weak var patientbtn: UIButton!
    
    
    @IBOutlet weak var completedDateOut: UILabel!
    
    @IBOutlet weak var commantTitleOut: UILabel!
    @IBOutlet weak var commentTextOut: UITextView!
    @IBOutlet weak var popSubmitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func screeningTapped(_ sender: Any) {
        screeningBtn.backgroundColor = UIColor.blue
        documentBtn.backgroundColor = UIColor.white
        patientbtn.backgroundColor = UIColor.gray
        patientbtn.borderColor = UIColor.gray
        patientbtn.isEnabled = false
        completedDateOut.isHidden = false
        commantTitleOut.isHidden = false
        commentTextOut.isHidden = false
    }
    
    
    @IBAction func documentTapped(_ sender: Any) {
        screeningBtn.backgroundColor = UIColor.white
        documentBtn.backgroundColor = UIColor.blue
        patientbtn.backgroundColor = UIColor.gray
        patientbtn.borderColor = UIColor.gray
        patientbtn.isEnabled = false
        completedDateOut.isHidden = false
        commantTitleOut.isHidden = false
        commentTextOut.isHidden = false
    }
    
    @IBAction func patientTapped(_ sender: Any) {
        screeningBtn.backgroundColor = UIColor.gray
        screeningBtn.borderColor = UIColor.gray
        screeningBtn.isEnabled = false
        documentBtn.backgroundColor = UIColor.gray
        documentBtn.borderColor = UIColor.gray
        documentBtn.isEnabled = false
        patientbtn.backgroundColor = UIColor.blue
        completedDateOut.isHidden = true
        commantTitleOut.isHidden = false
        commentTextOut.isHidden = false
        
    }
    
    @IBAction func closeTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}


