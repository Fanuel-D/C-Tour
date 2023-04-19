//
//  TourViewController.swift
//  C-Tour
//
//  Created by Fanuel Dana on 4/17/23.
//

import UIKit

class TourViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var tapCount = 0
    let imageNames = ["SciCenter", "Mccabe", "Singer", "Wharton", "Beardsley", "DCC"]
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UILabel!
    @IBAction func screenChange(_ sender: UIButton) {
        tapCount += 1
        if tapCount == 1 {
            textView.text = "Button tapped once"
            imageView.image = UIImage(named: "SciCenter")
        } else if tapCount == 2 {
            textView.text = "Button tapped twice"
            imageView.image = UIImage(named: "Mccabe")
        } else if tapCount == 3 {
            textView.text = "Button tapped 3"
            imageView.image = UIImage(named: "Singer")
        } else if tapCount == 4 {
            textView.text = "Button tapped 4 times"
            imageView.image = UIImage(named: "Wharton")
        } else if tapCount == 5 {
            textView.text = "Button tapped 5 times"
            imageView.image = UIImage(named: "Beardsley")
        } else if tapCount == 6 {
            textView.text = "Button tapped 6 times"
            imageView.image = UIImage(named: "DCC")
            tapCount = 0
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

}
