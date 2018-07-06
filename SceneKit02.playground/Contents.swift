import UIKit
import SceneKit
import PlaygroundSupport

// create a scene ciew with an empty scene
let screensize:CGRect = UIScreen.main.bounds
let screenHeight = screensize.height
let newCameraYPosition = Float(screenHeight) * 0.01

var sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: screensize.width, height: screensize.height))
var scene = SCNScene()
sceneView.scene = scene
scene.background.contents = UIColor(hexString: "#fff")
PlaygroundPage.current.liveView = sceneView

// default lighting
sceneView.autoenablesDefaultLighting = true
sceneView.allowsCameraControl = true

// a camera
var cameraNode = SCNNode()
cameraNode.camera = SCNCamera()
cameraNode.position = SCNVector3(0, 0, 4)
scene.rootNode.addChildNode(cameraNode)

// a geometry object
//SCNTorus(ringRadius: 1, pipeRadius: 0.35)
// SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
// SCNPyramid(width: 1.0, height: 1.0, length: 1.0)
var shape = SCNCone(topRadius: 0.0, bottomRadius: 1.0, height: 2.0)
var shapeNode = SCNNode(geometry: shape)
scene.rootNode.addChildNode(shapeNode)

// configure the geometry object
shape.firstMaterial?.diffuse.contents = UIColor(hexString: "#003264")
shape.firstMaterial?.specular.contents = UIColor(hexString: "#fff")

// set a rotation axis (no angle) to be able to
// use a nicer keypath below and avoid needing
// to wrap it in an NSValue
shapeNode.rotation = SCNVector4(1.0, 1.0, 0.0, 0.0)

// animate the the rotation of the torus
var spin = CABasicAnimation(keyPath: "rotation.x") // only animate the angle
spin.toValue = 2.0 * .pi
spin.duration = 3
spin.repeatCount = HUGE // for infinity
shapeNode.addAnimation(spin, forKey: "spin around")


