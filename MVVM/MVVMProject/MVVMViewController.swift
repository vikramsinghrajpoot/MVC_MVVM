//
//  MVVMViewController.swift
//  MVVMProject
//
//  Created by Vikram Singh Rajpoot on 13-12-2017.
//  Copyright © 2017 Vikram Singh Rajpoot. All rights reserved.
//

import UIKit

class MVVMViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    private var dogViewModel = DogViewModel(dog: Dog())
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var breed: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateScreen()
    }
    
    func updateScreen() {
        name.attributedText = dogViewModel.name
        breed.text = dogViewModel.breed
        color.text = dogViewModel.color
        age.text = dogViewModel.age
    }
    
    @IBAction func showLib(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    private func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        let image = info[UIImagePickerControllerEditedImage] as! UIImage
        self.image.image = image
        
        picker.dismiss(animated: true, completion: nil)
    }
}


