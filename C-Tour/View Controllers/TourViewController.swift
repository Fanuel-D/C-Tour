//
//  TourViewController.swift
//  C-Tour
//
//  Created by Fanuel Dana on 4/19/23.
//

import UIKit

class TourViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "SciCenter")
           imageControl.image = image
        // Do any additional setup after loading the view.
    }
    
   
        var tapCount = 0
        let images: [UIImage] = [
            UIImage(named: "SciCenter")!,
            UIImage(named: "Mccabe")!,
            UIImage(named: "Singer")!,
            UIImage(named: "Wharton")!,
            UIImage(named: "Beardsley")!,
            UIImage(named: "DCC")!
        ]
        @IBOutlet weak var imageControl: UIImageView!
        
        
        
        @IBAction func screenChange(_ sender: UIButton) {
            tapCount += 1
            if tapCount >= images.count {
                tapCount = 0
            }
            imageControl.image = images[tapCount]
        }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


