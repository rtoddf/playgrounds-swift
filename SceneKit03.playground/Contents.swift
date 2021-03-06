import UIKit
import SceneKit
import PlaygroundSupport

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let sceneView = SCNView(frame: self.view.frame)
        let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        self.view.addSubview(sceneView)
        
        let scene = SCNScene()
        sceneView.scene = scene
        sceneView.allowsCameraControl = true
        
        let cameraNode = setupCamera()
        let spotLightNode = setupSpotLight()
        let ambientLight = setupAmbientLight()

        cameraNode.light = ambientLight
        
        let cubeGeometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        cubeGeometry.materials = [createMaterial(color: "#6699cc")]
        let cubeNode = SCNNode(geometry: cubeGeometry)
        
        let constraint = SCNLookAtConstraint(target: cubeNode)
        constraint.isGimbalLockEnabled = true
        cameraNode.constraints = [constraint]
        spotLightNode.constraints = [constraint]
        
        let planeGeometry = SCNPlane(width: 50.0, height: 50.0)
        planeGeometry.materials = [createMaterial(color: "#003264")]
        let planeNode = SCNNode(geometry: planeGeometry)
        planeNode.eulerAngles = SCNVector3(x: GLKMathDegreesToRadians(-90), y: 0, z: 0)
        planeNode.position = SCNVector3(x: 0, y: -0.5, z: 0)
        
        scene.rootNode.addChildNode(cameraNode)
        scene.rootNode.addChildNode(spotLightNode)
        scene.rootNode.addChildNode(cubeNode)
        scene.rootNode.addChildNode(planeNode)
    }
    
    func setupCamera() -> SCNNode {
        let camera = SCNCamera()
        let cameraNode = SCNNode()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(x: -3.0, y: 3.0, z: 3.0)
        
        return cameraNode
    }
    
    func setupSpotLight() -> SCNNode {
        let light = SCNLight()
        light.type = SCNLight.LightType.spot
        light.spotInnerAngle = 30.0
        light.spotOuterAngle = 80.0
        light.castsShadow = true
        
        let lightNode = SCNNode()
        lightNode.light = light
        lightNode.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)
        
        return lightNode
    }
    
    func setupAmbientLight() -> SCNLight {
        let ambientLight = SCNLight()
        ambientLight.type = SCNLight.LightType.ambient
        ambientLight.color = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        
        return ambientLight
    }
    
    func createMaterial(color:String) -> SCNMaterial {
        let material = SCNMaterial()
        let theColor = UIColor(hexString: color)
        material.diffuse.contents = theColor
        return material
    }
}

let viewController = ViewController()
let navigationController = UINavigationController(rootViewController: viewController)
viewController.navigationController?.isNavigationBarHidden = true
PlaygroundPage.current.liveView = navigationController

