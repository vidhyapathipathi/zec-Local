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
    
    @IBOutlet weak var bar1height: NSLayoutConstraint!
    
    @IBOutlet weak var bar2height: NSLayoutConstraint!
    
    @IBOutlet weak var bar3height: NSLayoutConstraint!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commitInit()
    }
    
    func barAnimation() {

            let inTitleAnimator1 = UIViewPropertyAnimator(duration:2.0, dampingRatio: 1, animations: {
                self.bar1height.constant = 8
                self.layoutIfNeeded()
            }).startAnimation()

            let inTitleAnimator2 = UIViewPropertyAnimator(duration:2.0, dampingRatio: 2, animations: {
                self.bar2height.constant = 8
                self.layoutIfNeeded()
            }).startAnimation()

            let inTitleAnimator3 = UIViewPropertyAnimator(duration:2.0, dampingRatio: 3, animations: {
                self.bar3height.constant = 8
                self.layoutIfNeeded()
            }).startAnimation()

    }
    
    func commitInit() {
        Bundle.main.loadNibNamed("LogoView", owner: self, options: nil)
        self.addSubview(viewContainer)
        viewContainer.frame = self.bounds
    }

}
