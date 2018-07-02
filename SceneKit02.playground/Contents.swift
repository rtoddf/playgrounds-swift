import UIKit
import SceneKit
import PlaygroundSupport

// create a scene ciew with an empty scene
var sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
var scene = SCNScene()
sceneView.scene = scene
scene.background.contents = UIColor(hexString: "#333")
PlaygroundPage.current.liveView = sceneView

// default lighting
sceneView.autoenablesDefaultLighting = true
sceneView.allowsCameraControl = true

// a camera
var cameraNode = SCNNode()
cameraNode.camera = SCNCamera()
cameraNode.position = SCNVector3(0, 0, 3)
scene.rootNode.addChildNode(cameraNode)

// a geometry object
// SCNTorus(ringRadius: 1, pipeRadius: 0.35)
// SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
var shape = SCNPyramid(width: 2.0, height: 1.5, length: 2.0)
var shapeNode = SCNNode(geometry: shape)
scene.rootNode.addChildNode(shapeNode)

// configure the geometry object
shape.firstMaterial?.diffuse.contents = UIColor(hexString: "#baba71")
shape.firstMaterial?.specular.contents = UIColor(hexString: "#fff")

// set a rotation axis (no angle) to be able to
// use a nicer keypath below and avoid needing
// to wrap it in an NSValue
shapeNode.rotation = SCNVector4(1.0, 1.0, 0.0, 0.0)

// animate the the rotation of the torus
var spin = CABasicAnimation(keyPath: "rotation.w") // only animate the angle
spin.toValue = 2.0 * .pi
spin.duration = 3
spin.repeatCount = HUGE // for infinity
shapeNode.addAnimation(spin, forKey: "spin around")


