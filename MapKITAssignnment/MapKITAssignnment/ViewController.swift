//
//  ViewController.swift
//  MapKITAssignnment
//
//  Created by Ayan on 4/30/21.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var myMap: MKMapView!
    var mapType: [Int: MKMapType] = [0: .hybrid, 1: .standard, 2: .satellite]
    override func viewDidLoad() {
        super.viewDidLoad()
        myMap.mapType = .standard
    }
    @IBAction func segmentSelected(_ sender: UISegmentedControl) {
        myMap.mapType = mapType[sender.selectedSegmentIndex] ?? .standard
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation{
            return nil
        }
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customannotation")
        annotationView.image = UIImage(named: "Pin")
        annotationView.canShowCallout = true
        return annotationView
    }
    @IBAction func longTap(_ sender: UILongPressGestureRecognizer) {
        
        let touchPoint = sender.location(in: self.myMap)
        let coordinnate = self.myMap.convert(touchPoint, toCoordinateFrom:self.myMap)
        
        
        let alertContoller = UIAlertController(title: "New Location", message: "Fill the fields", preferredStyle: .alert)
        alertContoller.addTextField{(textfield) in textfield.placeholder = "Location"
        }
        alertContoller.addTextField{(textfield) in textfield.placeholder = "Description"
        }
        let save = UIAlertAction(title: "Ok", style: .default) { [weak self](alert) in
            let firstTextField = alertContoller.textFields![0] as UITextField
            let secondTextField = alertContoller.textFields![1] as UITextField
            
            let annotation = MKPointAnnotation()
            annotation.title = firstTextField.text
            annotation.subtitle = secondTextField.text
            annotation.coordinate = coordinnate
            
            self?.myMap.addAnnotation(annotation)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alertContoller.addAction(save)
        alertContoller.addAction(cancelAction)
        
        self.present(alertContoller, animated: true, completion: nil)
    }
   
    @IBAction func Organize(_ sender: Any) {
    }
    
    
}


