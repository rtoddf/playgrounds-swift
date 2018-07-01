// https://stackoverflow.com/questions/38543222/how-do-i-get-spritekit-playgrounds-working-in-xcode-8-beta

import PlaygroundSupport
import SpriteKit

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 480, height: 320))
let scene = SKScene(size: CGSize(width: 480, height: 320))

scene.backgroundColor = SKColor.darkGray

sceneView.showsFPS = true
sceneView.presentScene(scene)
PlaygroundSupport.PlaygroundPage.current.liveView = sceneView

let shape = SKShapeNode()

//shape.path = UIBezierPath(roundedRect: CGRect(x: -128, y: -128, width: 256, height: 256), cornerRadius: 64).cgPath

shape.path = UIBezierPath(rect: CGRect(x: -128, y: -128, width: sceneView.frame.width * 0.5, height: sceneView.frame.height * 0.5)).cgPath

shape.position = CGPoint(x: sceneView.frame.midX, y: sceneView.frame.midY)
shape.fillColor = .orange

shape.strokeColor = .black
shape.lineWidth = 1.0

scene.addChild(shape)

let otherCircle:SKShapeNode = {
    let circle = SKShapeNode(circleOfRadius: 50 )
    circle.position = CGPoint(x: sceneView.frame.midX, y: sceneView.frame.midY)
    circle.fillColor = .blue
    return circle
}()


let circle = SKShapeNode(circleOfRadius: 100 ) // Size of Circle
circle.position = CGPoint(x: sceneView.frame.midX, y: sceneView.frame.midY)

circle.fillColor = .purple
circle.strokeColor = .black
circle.lineWidth = 1.0
circle.glowWidth = 0.0

scene.addChild(circle)

scene.addChild(otherCircle)
