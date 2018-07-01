import UIKit
import SceneKit
import PlaygroundSupport

var scnView:SCNView!
var scnScene:SCNScene!
var cameraNode:SCNNode!

class GameViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(white: 0.3, alpha: 1.0)
        
        setupView()
        setupScene()
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
        scnView = self.view as! SCNView
        scnView.allowsCameraControl = true
        scnView.autoenablesDefaultLighting = true
    }
    
    func setupScene() {
        scnScene = SCNScene()
        scnView.scene = scnScene
    }
    
    func setupCamera() {
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        scnScene.rootNode.addChildNode(cameraNode)
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
        scnScene.rootNode.addChildNode(geometryNode)
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
//sceneViewController.navigationController?.isNavigationBarHidden = true
//PlaygroundPage.current.liveView = navigationController
PlaygroundPage.current.liveView = gameViewController
