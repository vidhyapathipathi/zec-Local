//
//  ViewExtenctions.swift
//  JobSeeker
//
//  Created by Ezdo on 12/04/18.
//  Copyright © 2018 Ezdo. All rights reserved.
//
import UIKit

@IBDesignable
class ViewExtenctions: UIView {
 
}

enum CornerSide: Int {
    case all
    case left
    case right
    case top
    case bottom
}

extension UIView {
    func setRoundCorners(_ side: CornerSide) {
        var corners:UIRectCorner!
        switch side {
        case .left:
            corners = [.topLeft, .bottomLeft]
        case .right:
            corners = [.topRight, .bottomRight]
        case .top:
            corners = [.topLeft, .topRight]
        case .bottom:
            corners = [.bottomLeft, .bottomRight]
        case .all:
            corners = [.topRight, .bottomRight, .topLeft, .bottomLeft]
        }
        
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: frame.size.height/2, height: frame.size.height/2))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    
}
extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!); //UIColor(CGColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.4
            layer.shadowRadius = shadowRadius
        }
    }
    
    
    
    
}

//
// View for UILabel Accessory
//
extension UIView {
    
    func rightValidAccessoryView() -> UIView {
        let imgView = UIImageView(image: UIImage(named: "check_valid"))
        imgView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        imgView.backgroundColor = UIColor.clear
        return imgView
    }
    
    func rightInValidAccessoryView() -> UIView {
        let imgView = UIImageView(image: UIImage(named: "check_invalid"))
        imgView.frame = CGRect(x: self.cornerRadius, y: self.cornerRadius, width: 20, height: 20)
        imgView.backgroundColor = UIColor.clear
        return imgView
    }
}

///==UIImageview
extension UIImage {
    
    // Loads image asynchronously
    class func loadFromURL(url: URL, callback: @escaping (UIImage)->()) {
        
        DispatchQueue.global().async {
            let imageData = NSData.init(contentsOf: url)
            if let data = imageData{
                DispatchQueue.main.async {
                    if let image = UIImage(data: data as Data) {
                        callback(image)
                    }
                }
            }
            // qos' default value is ´DispatchQoS.QoSClass.default`
        }
    }
}
extension String {
    var bool : Bool{
        let value = self.uppercased()
        if value=="TRUE" || value=="YES"{
            return true
            
        }else if value=="FALSE" || value=="NO"{
            return false
            
        }else if self=="1"{
            return true
            
        }else if self=="0"{
            
            return false
        }
        else{
            return false
        }
        
    }
    
    public var length: Int {
        return self.count
    }
    /// ASK: checks string is empty
    var isBlank: Bool {
        get {
            let trimmed = trimmingCharacters(in: CharacterSet.whitespaces)
            return trimmed.isEmpty
        }
    }
    
}

 
