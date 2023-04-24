//
//  HopeViewController.swift
//  C-Tour
//
//  Created by Fanuel Dana on 4/21/23.
//

import UIKit

class HopeViewController: UIViewController {
    

    
    let amphitheater = Spot(image: UIImage(named: "amp2") ?? UIImage(), spotName: "The Amphitheater", year: 1890, spotDescription: "When you see it for the first time, it will take your breath away. One of Swarthmore’s most treasured spaces, Scott Outdoor Amphitheater is the site of new students’ first formal gathering as a class, First Collection, and their Last Collection.")
    
    let arboretum = Spot(image: UIImage(named: "scott") ?? UIImage(), spotName: "Scott Arboretum", year: 1875, spotDescription: "The Scott Arboretum cultivates a variety of plants that create some of the region’s most intimate, authentic, and accessible horticultural experiences. It is referred to as the “garden of ideas” and is always there to sustain the body, enchant the eye, and soothe the spirit.")
    
    let crum = Spot(image: UIImage(named: "crum2") ?? UIImage(), spotName: "The Crum Woods", year: 1875, spotDescription: "The Crum Woods encompasses 220 acres of mostly forested land straddling the Crum Creek in Swarthmore, PA. The woods contain walking trails and provide recreational opportunities for the Swarthmore College community as well as visitors to the campus.")
    
    let whisper = Spot(image: UIImage(named: "whisper1") ?? UIImage(), spotName: "Whispers Bench", year: 1991, spotDescription: "The Whispering Bench is an often-forgotten place to sit on campus. Located on the front lawn of campus near the president’s house and the Cherry Border, the Whispering Bench is maintained in memory of Carolien Powers ’22'.")
  
  
    
    
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
