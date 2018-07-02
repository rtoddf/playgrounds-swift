import UIKit
import SceneKit
import PlaygroundSupport

var sceneView:SCNView!
var scene:SCNScene!

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupCamera()
        spawnShape()
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setupView() {
        sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
//        sceneView.frame = view.frame
        scene = SCNScene()
        sceneView.scene = scene
        scene.background.contents = UIColor(hexString: "#333")
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        
        self.view.addSubview(sceneView)
    }
    
    func setupCamera() {
        // a camera
        var cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(0, 0, 3)
        scene.rootNode.addChildNode(cameraNode)
    }
    
    func spawnShape() {
        var geometry:SCNGeometry
        switch ShapeType.random() {
        case .cone:
            geometry = SCNCone(topRadius: 0.25, bottomRadius: 0.5, height: 1)
        case .capsule:
            geometry = SCNCapsule(capRadius: 0.3, height: 2.5)
        case .tube:
            geometry = SCNTube(innerRadius: 0.25, outerRadius: 0.5, height: 1.0)
        case .sphere:
            geometry = SCNSphere(radius: 0.5)
        case .torus:
            geometry = SCNTorus(ringRadius: 0.5, pipeRadius: 0.5)
        case .pyramid:
            geometry = SCNPyramid(width: 1.0, height: 1.0, length: 1.0)
        case .cylinder:
            geometry = SCNCylinder(radius: 0.3, height: 2.5)
        case .box:
            geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        }
        let geometryNode = SCNNode(geometry: geometry)
        scene.rootNode.addChildNode(geometryNode)
    }
}

enum ShapeType:Int {
    case cone
    case capsule
    case tube
    case sphere
    case torus
    case pyramid
    case cylinder
    case box
    
    static func random() -> ShapeType {
        let maxValue = tube.rawValue
        let randomValue = arc4random_uniform(UInt32(maxValue + 1))
        return ShapeType(rawValue: Int(randomValue))!
    }
}

let gameViewController = GameViewController()
let navigationController = UINavigationController(rootViewController: gameViewController)
gameViewController.navigationController?.isNavigationBarHidden = true
PlaygroundPage.current.liveView = navigationController
