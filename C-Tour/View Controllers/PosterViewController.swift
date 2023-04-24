//
//  PostViewController.swift
//  C-Tour
//
//  Created by Maxwell Kumbong on 4/21/23.
//

import UIKit
import ParseSwift
import PhotosUI

class PosterViewController: UIViewController {

    @IBOutlet weak var postButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var choosePhotoButton: UIButton!
    private var pickedImage: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onPickImageTapped(_ sender: UIBarButtonItem) {
        var config = PHPickerConfiguration()

        
        config.filter = .images

        config.preferredAssetRepresentationMode = .current

        config.selectionLimit = 1

        let picker = PHPickerViewController(configuration: config)
        picker.delegate = self

        present(picker, animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension PosterViewController: PHPickerViewControllerDelegate {


    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {

        
        picker.dismiss(animated: true)

        guard let provider = results.first?.itemProvider,
   
              provider.canLoadObject(ofClass: UIImage.self) else { return }


        provider.loadObject(ofClass: UIImage.self) { [weak self] object, error in

  
            guard let image = object as? UIImage else {
                self?.showAlert()
                return
            }

    
            if let error = error {
                self?.showAlert(description: error.localizedDescription)
                return
            } else {


                DispatchQueue.main.async {

                    self?.imageView.image = image

                    self?.pickedImage = image
                }
            }
        }
    }
}
