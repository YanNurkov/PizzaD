//
//  MapViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 01.12.2022.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices ()
        configView()
        makeConstraints()
        fetchStadiumsOnMap(restaurants)
        mapView.delegate = self
    }
    
    
    func configView() {
        view.addSubview(mapView)
    }
    

    let restaurants =  [Restaurants (name: "PizzaD", lattitude:  55.75512, longtitude: 37.63140),
                        Restaurants (name: "PizzaD", lattitude:  55.74717, longtitude: 37.59488),
                        Restaurants (name: "PizzaD", lattitude:  55.75892, longtitude: 37.60553),
                        Restaurants (name: "PizzaD", lattitude:  55.76091, longtitude: 37.62295),
                        Restaurants (name: "PizzaD", lattitude:  55.76058, longtitude: 37.63987)]
    
    func fetchStadiumsOnMap(_ stadiums: [Restaurants]) {
      for stadium in stadiums {
        let annotations = MKPointAnnotation()
        annotations.title = stadium.name
        annotations.coordinate = CLLocationCoordinate2D(latitude:
          stadium.lattitude, longitude: stadium.longtitude)
        mapView.addAnnotation(annotations)
      }
    }
    
    func makeConstraints() {
        mapView.snp.makeConstraints { make in
            make.left.right.top.bottom.equalToSuperview()
        }
    }
    
    let locationManager = CLLocationManager()
    
    lazy var mapView: MKMapView = {
        let obj = MKMapView()
        obj.mapType = .standard
        obj.isZoomEnabled = true
        obj.isScrollEnabled = true
        return obj
    }()

    
    struct Restaurants  {
     var name: String
     var lattitude: CLLocationDegrees
     var longtitude: CLLocationDegrees
    }
    
    
    func checkLocationServices() {
        
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        
        DispatchQueue.global().async {
            if CLLocationManager.locationServicesEnabled() {
                self.locationManager.delegate = self
                self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
                self.locationManager.startUpdatingLocation()
            }
        }
       
        
        
        if let coor = mapView.userLocation.location?.coordinate{
            mapView.setCenter(coor, animated: true)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations
        locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate

        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: locValue, span: span)
        mapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locValue
        annotation.title = "You are Here"
        mapView.addAnnotation(annotation)
        manager.stopUpdatingLocation()
    }
    
    
}
