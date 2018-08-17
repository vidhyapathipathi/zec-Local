//
//  LoginView.swift
//  ECI-Local
//
//  Created by Vidhyapathi Kandhasamy on 8/17/18.
//  Copyright © 2018 aezion. All rights reserved.
//

import UIKit

class LogoView: UIView {

    @IBOutlet var viewContainer: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commitInit()
    }
    
    func commitInit() {
        Bundle.main.loadNibNamed("LogoView", owner: self, options: nil)
        self.addSubview(viewContainer)
        viewContainer.frame = self.bounds
    }

}
