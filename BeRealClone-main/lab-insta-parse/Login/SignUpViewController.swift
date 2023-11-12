//
//  SignUpViewController.swift
//  lab-insta-parse
//
//  Created by Charlie Hieger on 11/1/22.
//

import UIKit

// TODO: Pt 1 - Import Parse Swift
import ParseSwift
import PhotosUI

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var PronounsField: UITextField!
    
    @IBOutlet weak var backstoryField: UITextField!
    
  
    @IBOutlet weak var profileImage: UIImageView!
    
    
    private var pickedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
   
    @IBAction func imageSelect(_ sender: Any) {
        // TODO: Pt 1 - Present Image picker
        // Create and configure PHPickerViewController

        // Create a configuration object
        var config = PHPickerConfiguration()

        // Set the filter to only show images as options (i.e. no videos, etc.).
        config.filter = .images

        // Request the original file format. Fastest method as it avoids transcoding.
        config.preferredAssetRepresentationMode = .current

        // Only allow 1 image to be selected at a time.
        config.selectionLimit = 1

        // Instantiate a picker, passing in the configuration.
        let picker = PHPickerViewController(configuration: config)

        // Set the picker delegate so we can receive whatever image the user picks.
        picker.delegate = self

        // Present the picker
        present(picker, animated: true)
    }
    
    
    @IBAction func onSignUpTapped(_ sender: Any) {

        // Make sure all fields are non-nil and non-empty.
        guard let username = usernameField.text,
              let email = emailField.text,
              let password = passwordField.text,
              let pronouns = PronounsField.text,
              let backstory = backstoryField.text,
              let image = pickedImage,
              let imageData = image.jpegData(compressionQuality: 0.1),
              !pronouns.isEmpty,
              !backstory.isEmpty,
              !username.isEmpty,
              !email.isEmpty,
              !password.isEmpty else {

            showMissingFieldsAlert()
            return
        }
        
        // Create a ParseFile with the image data
        let imageFile = ParseFile(name: "profile.jpg", data: imageData)

        // TODO: Pt 1 - Parse user sign up
        var newUser = User()
        newUser.username = username
        newUser.email = email
        newUser.password = password
        newUser.Pronouns = pronouns
        newUser.Backstory = backstory
        // Set the profile picture to the user
        newUser.ProfileImage = imageFile

        newUser.signup { [weak self] result in

            switch result {
            case .success(let user):

                print("✅ Successfully signed up user \(user)")

                // Post a notification that the user has successfully signed up.
                NotificationCenter.default.post(name: Notification.Name("login"), object: nil)

            case .failure(let error):
                // Failed sign up
                self?.showAlert(description: error.localizedDescription)
            }
        }
    }

    private func showMissingFieldsAlert() {
        let alertController = UIAlertController(title: "Opps...", message: "We need all fields filled out in order to sign you up.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
}

extension SignUpViewController: PHPickerViewControllerDelegate {

    // PHPickerViewController required delegate method.
    // Returns PHPicker result containing picked image data.
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {

        // Dismiss the picker
        picker.dismiss(animated: true)

        // Make sure we have a non-nil item provider
        guard let provider = results.first?.itemProvider,
              // Make sure the provider can load a UIImage
              provider.canLoadObject(ofClass: UIImage.self) else { return }

        // Load a UIImage from the provider
        provider.loadObject(ofClass: UIImage.self) { [weak self] object, error in

            // Make sure we can cast the returned object to a UIImage
            guard let image = object as? UIImage else {
                self?.showAlert()
                return
            }

            // Check for and handle any errors
            if let error = error {
                self?.showAlert(description: error.localizedDescription)
                return
            } else {

                // UI updates (like setting image on image view) should be done on main thread
                DispatchQueue.main.async {

                    // Set image on preview image view
                    self?.profileImage.image = image

                    // Set image to use when saving post
                    self?.pickedImage = image
                }
            }
        }
    }
}

// TODO: Pt 2 - Add UIImagePickerControllerDelegate + UINavigationControllerDelegate
extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // Delegate method that's called when user finishes picking image (photo library or camera)
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        // Dismiss the image picker
        picker.dismiss(animated: true)

        // Get the edited image from the info dictionary (if `allowsEditing = true` for image picker config).
        // Alternatively, to get the original image, use the `.originalImage` InfoKey instead.
        guard let image = info[.editedImage] as? UIImage else {
            print("❌📷 Unable to get image")
            return
        }

        // Set image on preview image view
        profileImage.image = image

        // Set image to use when saving post
        pickedImage = image
    }
}

