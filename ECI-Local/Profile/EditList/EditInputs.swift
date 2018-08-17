//
//  EditInputs.swift
//  ECI-Local
//
//  Created by Vidhyapathi Kandhasamy on 8/17/18.
//  Copyright © 2018 aezion. All rights reserved.
//

import UIKit

protocol EditInputDelegates {
    func didChangeEditView(editHiddenView: Bool, editinputViews: Bool)
}

class EditInputs: UIView {

    @IBOutlet var viewContainer: UIView!
    
    @IBOutlet weak var firstnameView: UIView!
    
    @IBOutlet weak var lastnameView: UIView!
    
    @IBOutlet weak var emailView: UIView!
    
    @IBOutlet weak var mobileNumberView: UIView!
    
    var profileView = ProfileView()
    
    
    var editIPDelegate: EditInputDelegates!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
        inputViewDesign()
    }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commitInit()
        self.inputViewDesign()
    }
    
    func inputViewDesign() {
        firstnameView.setRoundCorners(.right)
        lastnameView.setRoundCorners(.right)
        emailView.setRoundCorners(.right)
        mobileNumberView.setRoundCorners(.right)
    }
    
    func commitInit() {
        Bundle.main.loadNibNamed("EditInputs", owner: self, options: nil)
        self.addSubview(viewContainer)
        viewContainer.frame = self.bounds
    }

    @IBAction func saveTapped(_ sender: Any) {
        print("save Tapped")
        if let d = editIPDelegate {
            d.didChangeEditView(editHiddenView: false, editinputViews: true)
        }

    }
    @IBAction func changePasswordTapped(_ sender: Any) {
    }
}
