import UIKit
import MapKit
import PlaygroundSupport

let westminster = CLLocationCoordinate2DMake(51.499292, -0.12731)
let camera = MKMapCamera(lookingAtCenter: westminster, fromDistance: 50, pitch: 50, heading: 262)
let annotation = MKPointAnnotation()
annotation.coordinate = westminster

let mapView:MKMapView = {
    let map = MKMapView()
    map.frame = CGRect(x: 0.0, y: 0.0, width: 600, height: 600)
    map.mapType = .satelliteFlyover
    map.camera = camera
    map.addAnnotation(annotation)
    print("something 777")
    return map
}()

PlaygroundPage.current.liveView = mapView
