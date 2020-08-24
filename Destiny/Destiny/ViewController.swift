//
//  ViewController.swift
//  Destiny
//
//  Created by Guilherme  Iropi on 20/08/2020.
//  Copyright © 2020 Guilherme Iropi. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: Outlets
    @IBOutlet weak var destinyNameLabel: UILabel!
    @IBOutlet weak var destinyNameTextField: UITextField!
    @IBOutlet weak var destinyImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        destinyNameTextField.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        destinyNameLabel.text = textField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    //MARK: Actions
    
    @IBAction func selectImageFromLibrary(_ sender: UITapGestureRecognizer) {
        
        destinyNameTextField.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage.self.rawValue] as? UIImage else {
            fatalError()
        }
        
        destinyImageView.image = selectedImage
    
        dismiss(animated: true, completion: nil)
    }
    @IBAction func setDefaultLabel(_ sender: UIButton) {
        destinyNameLabel.text = "Default Text"
    }
}

