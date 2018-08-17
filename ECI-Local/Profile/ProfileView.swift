//
//  ProfileView.swift
//  ECI-Local
//
//  Created by Vidhyapathi Kandhasamy on 8/17/18.
//  Copyright © 2018 aezion. All rights reserved.
//

import UIKit

class ProfileView: UIViewController {
    
    @IBOutlet weak var profileImgView: UIImageView!
    
    @IBOutlet weak var editbtn: UIButton!
    @IBOutlet weak var editHiddenView: UIView!
    
    @IBOutlet weak var editinputViews: EditInputs!
    override func viewDidLoad() {
        super.viewDidLoad()
        editinputViews.isHidden = true
        editHiddenView.isHidden = false
        editinputViews.editIPDelegate = self
    }

    @IBAction func cameraTapped(_ sender: Any) {
       cameraOrPhoto()
    }
    
    @IBAction func editTapped(_ sender: Any) {
        print("Edit Tapped")
        editbtn.isHidden = true
        editHiddenView.isHidden = true
        editinputViews.isHidden = false
    }
    
}

extension ProfileView: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func cameraOrPhoto(){
        
        let image = UIImagePickerController()
        image.delegate = self
        let alertController = UIAlertController(title: "Media", message: "Select Action?", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Camera", style: .default) { (action:UIAlertAction) in
            image.sourceType = UIImagePickerControllerSourceType.camera
            self.present(image, animated: true, completion: nil)
        }
        
        let action2 = UIAlertAction(title: "Phone library", style: .cancel) { (action:UIAlertAction) in
            image.sourceType = UIImagePickerControllerSourceType.photoLibrary
            self.present(image, animated: true, completion: nil)
        }
        
        let action3 = UIAlertAction(title: "Cancel", style: .destructive) { (action:UIAlertAction) in
        }
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            profileImgView.image = image
        } else {
            print("Error Alert")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension ProfileView: EditInputDelegates {
    
    func didChangeEditView(editHiddenView: Bool, editinputViews: Bool) {
        self.editHiddenView.isHidden = editHiddenView
        self.editinputViews.isHidden = editinputViews
        self.editbtn.isHidden = false
    }
    
}
