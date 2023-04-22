//
//  CorrectViewController.swift
//  C-Tour
//
//  Created by Fanuel Dana on 4/21/23.
//

import UIKit
import MapKit

class CorrectViewController: UIViewController, MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        picture.image = UIImage(named: "Parrish")
        mapy.delegate = self
        let location = locations[0]
        let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.0025, longitudeDelta: 0.0025)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = location.imageName
        mapy.setRegion(region, animated: true)
        mapy.addAnnotation(annotation)
    
        // Do any additional setup after loading the view.
    }
    
   
    let locations = [
        Location(imageName: "Parrish", latitude: 39.905379084102805, longitude: -75.35420943232845),
        Location(imageName: "SciCenter", latitude: 39.906792551164735, longitude: -75.35571378999889),
        Location(imageName: "Mccabe", latitude: 39.90547192361826, longitude: -75.35237412309667),
        Location(imageName: "Singer", latitude: 39.9074898293348, longitude: -75.35396583232837),
        Location(imageName: "Wharton", latitude: 39.903929563583574, longitude: -75.35623306116378),
        Location(imageName: "Beardsley", latitude: 39.90681467113786, longitude: -75.35472576116368),
        Location(imageName: "DCC", latitude: 39.903448676535184, longitude: -75.35378860475394)
    ]
    
    
    func getCoordinates(from locations: [Location]) -> [CLLocationCoordinate2D] {
        var coordinates = [CLLocationCoordinate2D]()
        for location in locations {
            let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            coordinates.append(coordinate)
        }
        return coordinates
    }
    
    
    @IBOutlet weak var mapy: MKMapView!
    @IBOutlet weak var picture: UIImageView!
    
    @IBOutlet weak var texter: UILabel!
    
    var tapCount = 1
    @IBAction func tap(_ sender: UIButton) {
        if tapCount == 1 {
            texter.text = "Button tapped once"
            picture.image = UIImage(named: "SciCenter")
            
                let location = locations[1]
                let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
                let span = MKCoordinateSpan(latitudeDelta: 0.0025, longitudeDelta: 0.0025)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                let annotation = MKPointAnnotation()
                annotation.coordinate = coordinate
                annotation.title = location.imageName
                mapy.setRegion(region, animated: true)
                mapy.addAnnotation(annotation)
            
            
        } else if tapCount == 2 {
            texter.text = "Button tapped twice"
            picture.image = UIImage(named: "Mccabe")
            
            let location = locations[2]
            let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            let span = MKCoordinateSpan(latitudeDelta: 0.0025, longitudeDelta: 0.0025)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = location.imageName
            mapy.setRegion(region, animated: true)
            mapy.addAnnotation(annotation)
        } else if tapCount == 3 {
            texter.text = "Button tapped 3"
            picture.image = UIImage(named: "Singer")
            
            let location = locations[3]
            let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            let span = MKCoordinateSpan(latitudeDelta: 0.0025, longitudeDelta: 0.0025)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = location.imageName
            mapy.setRegion(region, animated: true)
            mapy.addAnnotation(annotation)
        } else if tapCount == 4 {
            texter.text = "Button tapped 4 times"
            picture.image = UIImage(named: "Wharton")
            
            let location = locations[4]
            let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            let span = MKCoordinateSpan(latitudeDelta:0.0025, longitudeDelta: 0.0025)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = location.imageName
            mapy.setRegion(region, animated: true)
            mapy.addAnnotation(annotation)
        } else if tapCount == 5 {
            texter.text = "Button tapped 5 times"
            picture.image = UIImage(named: "Beardsley")
            
            let location = locations[5]
            let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            let span = MKCoordinateSpan(latitudeDelta: 0.0025, longitudeDelta: 0.0025)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = location.imageName
            mapy.setRegion(region, animated: true)
            mapy.addAnnotation(annotation)
        } else if tapCount == 6 {
            texter.text = "Button tapped 6 times"
            picture.image = UIImage(named: "DCC")
            
            let location = locations[6]
            let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            let span = MKCoordinateSpan(latitudeDelta: 0.0025, longitudeDelta: 0.0025)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = location.imageName
            mapy.setRegion(region, animated: true)
            mapy.addAnnotation(annotation)
            tapCount = 0
        }
        tapCount += 1
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

//extension CorrectViewController {
//    func mapy(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
//        let region = MKCoordinateRegion(center: userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
//        mapView.setRegion(region, animated: true)
//
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = userLocation.coordinate
//        annotation.title = "My Location"
//        mapView.addAnnotation(annotation)
//    }
//
//}
