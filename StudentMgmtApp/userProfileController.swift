//
//  userProfileController.swift
//  StudentMgmtApp
//
//  Created by Jeanette Lee on 10/31/18.
//  Copyright © 2018 Jeanette Lee. All rights reserved.
//

import UIKit
import MapKit

class UserProfileController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    var mapDistance : Double = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setZoomIn(_ sender: Any) {
        mapDistance = mapDistance - 2000
        if mapDistance < 100 {
            mapDistance = 100
        }
        let userLocation = map.userLocation
        let region = MKCoordinateRegion(center: (userLocation.location?.coordinate)!, latitudinalMeters: mapDistance, longitudinalMeters: mapDistance)
        map.setRegion(region, animated: true)
    }
    
    @IBAction func setZoomOut(_ sender: Any) {
        mapDistance = mapDistance + 2000
        let userLocation = map.userLocation
        let region = MKCoordinateRegion(center: (userLocation.location?.coordinate)!, latitudinalMeters: mapDistance, longitudinalMeters: mapDistance)
        map.setRegion(region, animated: true)
    }
    
    @IBAction func changeMapType(_ sender: Any) {
        if map.mapType == MKMapType.standard {
            map.mapType = MKMapType.satellite
        } else {
            map.mapType = MKMapType.standard
        }
    }
}
    

