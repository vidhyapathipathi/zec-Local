//
//  ChangePassword.swift
//  ECI-Local
//
//  Created by Vidhyapathi Kandhasamy on 8/20/18.
//  Copyright © 2018 aezion. All rights reserved.
//

import UIKit

class ChangePassword: UIView {
    
    @IBOutlet weak var changepassView: UIView!
    
    @IBOutlet weak var confirmPassView: UIView!
    
    @IBOutlet var viewContainer: UIView!
    
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
        changepassView.setRoundCorners(.right)
        confirmPassView.setRoundCorners(.right)
    }
    
    func commitInit() {
        Bundle.main.loadNibNamed("ChangePassword", owner: self, options: nil)
        self.addSubview(viewContainer)
        viewContainer.frame = self.bounds
    }
    
    
    @IBAction func saveClickTapped(_ sender: Any) {
        print("saveClickTapped")
        if let edit = editIPDelegate {
            edit.didChangeEditView(editHiddenView: false, editinputViews: true, changePassword: true, editbtn: false)
        }
    }
    
}

