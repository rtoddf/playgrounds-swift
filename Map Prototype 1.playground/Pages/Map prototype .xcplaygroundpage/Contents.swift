import UIKit
import PlaygroundSupport
import MapKit

let eiffelTower = CLLocationCoordinate2DMake(48.858370, 2.294481)
let camera = MKMapCamera(lookingAtCenter: eiffelTower, fromDistance: 50, pitch: 50, heading: 262)
let annotation = MKPointAnnotation()
annotation.coordinate = eiffelTower

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
PlaygroundPage.current.liveView = navigationController
//PlaygroundPage.current.needsIndefiniteExecution = true

