//
//  ViewController.swift
//  Permissions_RRA
//
//  Created by Rafael Rodriguez on 5/22/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.contentMode = .scaleToFill
            imageView.clipsToBounds = true
        }
    }
    
    //instantion related to image upload or take photo
    private let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
    }
    
    @IBAction func imageButtonPressed(_ sender: Any) {
        
        //actionsheet alert
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        //actions
        let takeAPhotoAction = UIAlertAction(title: "Take a Photo", style: .default) { (_) in
            self.handleTakeAPhoto()
        }
        
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { [ weak self ] (_) in
            self?.presentLibraryPhotoPicker()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        // Add Buttons for Actions
        alert.addAction(takeAPhotoAction)
        alert.addAction(photoLibraryAction)
        alert.addAction(cancelAction)
        
        // Present Action Sheet
        self.present(alert, animated: true, completion: nil)
        
    }//end imageButtonPressed
    
    private func presentLibraryPhotoPicker() {
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
    //manage status of denied or not Camera
    private func handleTakeAPhoto () {
        if hasDeniedCameraAccess {
            presentCameraSettingsAlert()
        } else {
            presentCameraPhotoPicker()
        }
    }
    
    //go to Camera
    private func presentCameraPhotoPicker() {
        picker.allowsEditing = false
        picker.sourceType = .camera
        picker.cameraCaptureMode = .photo
        self.present(picker, animated: true, completion: nil)
    }
    
    //made a handler to ask first user if want to send outside app
    private func presentCameraSettingsAlert() {
        
        let alert = UIAlertController(title: "Grant Access to Camera", message: "Would you like to jump to your settings to allow the app to use your camera?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Sure", style: .default, handler:  { (action) -> Void in
            self.takeuserToSettings()
        }))
        alert.addAction(UIAlertAction(title: "Not thanks", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
        
    }
    
    private func takeuserToSettings() {
        
        if let settingsURL = URL(string: UIApplicationOpenSettingsURLString) {
            UIApplication.shared.open(settingsURL, options: [:], completionHandler: nil)
        }
        
    }


}

extension ViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        guard let originalImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            
            picker.dismiss(animated: true, completion: nil)
            return
        }
        imageView.image = originalImage
        picker.dismiss(animated: true, completion: nil)
    }
    
    /* info:
     ▿ 4 elements
     ▿ 0 : 2 elements
     - key : "UIImagePickerControllerImageURL"
     - value : file:///Users/rafaelrodriguez/Library/Developer/CoreSimulator/Devices/AE4DC1B9-4045-42B7-BDC4-4609A403CE41/data/Containers/Data/Application/D23F28D3-7F1F-41FF-80B2-49FBE6C4F72F/tmp/65E254A1-C545-499B-B079-332B1D036127.jpeg
     ▿ 1 : 2 elements
     - key : "UIImagePickerControllerMediaType"
     - value : public.image
     ▿ 2 : 2 elements
     - key : "UIImagePickerControllerReferenceURL"
     - value : assets-library://asset/asset.JPG?id=106E99A1-4F6A-45A2-B320-B0AD4A8E8473&ext=JPG
     ▿ 3 : 2 elements
     - key : "UIImagePickerControllerOriginalImage"
     - value : <UIImage: 0x6000000b4880> size {4288, 2848} orientation 0 scale 1.000000
*/
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    
}

extension ViewController {
    
    var cameraPermisionStatus: AVAuthorizationStatus {
        let cameraMediaType = AVMediaType.video
        return AVCaptureDevice.authorizationStatus(for: cameraMediaType)
    }
    
    var hasDeniedCameraAccess: Bool {
        return cameraPermisionStatus == .denied
    }
    
}

