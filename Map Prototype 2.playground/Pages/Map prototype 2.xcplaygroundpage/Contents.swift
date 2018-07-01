import UIKit
import MapKit
import PlaygroundSupport

let westminster = CLLocationCoordinate2DMake(51.499292, -0.12731)
let camera = MKMapCamera(lookingAtCenter: westminster, fromDistance: 50, pitch: 50, heading: 262)
let annotation = MKPointAnnotation()
annotation.coordinate = westminster

let mapView2:MKMapView = {
    let map = MKMapView()
    map.mapType = .satelliteFlyover
    map.camera = camera
    map.addAnnotation(annotation)
    return map
}()

class MapViewController:UIViewController {
    let mapView:MKMapView = {
        let map = MKMapView()
        map.mapType = .satelliteFlyover
        map.camera = camera
        map.addAnnotation(annotation)
        return map
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.frame = view.frame
        view.addSubview(mapView)
    }
}

let mapViewController = MapViewController()
let navigationController = UINavigationController(rootViewController: mapViewController)
mapViewController.navigationController?.isNavigationBarHidden = true
//PlaygroundPage.current.liveView = navigationController
PlaygroundPage.current.liveView = mapViewController.mapView
