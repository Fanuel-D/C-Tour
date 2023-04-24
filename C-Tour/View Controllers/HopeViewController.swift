//
//  HopeViewController.swift
//  C-Tour
//
//  Created by Fanuel Dana on 4/21/23.
//

import UIKit

class HopeViewController: UIViewController {
    

    
    let amphitheater = Spot(image: UIImage(named: "amp2") ?? UIImage(), spotName: "The Amphitheater", year: 1890, spotDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac bibendum arcu, sit amet volutpat enim. In mollis suscipit nisi sed convallis. Sed non nulla a velit faucibus aliquam. Curabitur et sollicitudin quam. Aliquam consectetur quam eget sapien accumsan, vel volutpat massa congue. Phasellus consequat, nisl vitae feugiat malesuada, nunc massa aliquet ex, sit amet fringilla magna risus vel enim. Sed venenatis mi in sapien bibendum, a egestas tellus facilisis. Sed porta est vel enim rutrum, sit amet varius eros euismod.")
    let arboretum = Spot(image: UIImage(named: "scott") ?? UIImage(), spotName: "Scott Arboretum", year: 1875, spotDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac bibendum arcu, sit amet volutpat enim. In mollis suscipit nisi sed convallis. Sed non nulla a velit faucibus aliquam. Curabitur et sollicitudin quam. Aliquam consectetur quam eget sapien accumsan, vel volutpat massa congue. Phasellus consequat, nisl vitae feugiat malesuada, nunc massa aliquet ex, sit amet fringilla magna risus vel enim. Sed venenatis mi in sapien bibendum, a egestas tellus facilisis. Sed porta est vel enim rutrum, sit amet varius eros euismod.")
    let crum = Spot(image: UIImage(named: "crum2") ?? UIImage(), spotName: "The Crum Woods", year: 1875, spotDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac bibendum arcu, sit amet volutpat enim. In mollis suscipit nisi sed convallis. Sed non nulla a velit faucibus aliquam. Curabitur et sollicitudin quam. Aliquam consectetur quam eget sapien accumsan, vel volutpat massa congue. Phasellus consequat, nisl vitae feugiat malesuada, nunc massa aliquet ex, sit amet fringilla magna risus vel enim. Sed venenatis mi in sapien bibendum, a egestas tellus facilisis. Sed porta est vel enim rutrum, sit amet varius eros euismod.")
    let whisper = Spot(image: UIImage(named: "whisper1") ?? UIImage(), spotName: "Whispers Bench", year: 1991, spotDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac bibendum arcu, sit amet volutpat enim. In mollis suscipit nisi sed convallis. Sed non nulla a velit faucibus aliquam. Curabitur et sollicitudin quam. Aliquam consectetur quam eget sapien accumsan, vel volutpat massa congue. Phasellus consequat, nisl vitae feugiat malesuada, nunc massa aliquet ex, sit amet fringilla magna risus vel enim. Sed venenatis mi in sapien bibendum, a egestas tellus facilisis. Sed porta est vel enim rutrum, sit amet varius eros euismod.")
  
  
    
    
    var spots :[Spot] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        spots = [amphitheater, arboretum, crum, whisper]


        // Do any additional setup after loading the view.
    }
    

    @IBAction func add(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "trueSegue", sender: self)
    }
    
    
    @IBAction func didTapImage(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "hopeDetailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "hopeDetailSegue",
            let tappedView = sender as? UIView,
            let HopeViewController = segue.destination as? HopeDetailViewController {

            if tappedView.tag == 0 {
                HopeViewController.spot = spots[0]
            } else if tappedView.tag == 1 {
                HopeViewController.spot = spots[1]
            } else if tappedView.tag == 2 {
                HopeViewController.spot = spots[2]
            } else if tappedView.tag == 3 {
                HopeViewController.spot = spots[3]
            } else {
                print("no Top Spot was tapped.")
            }
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func didTapLabel(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "theSegue", sender: tappedView)
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
