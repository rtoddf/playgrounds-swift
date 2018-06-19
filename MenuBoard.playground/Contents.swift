//:# Menu Board
//: A menu to print to the live view

import UIKit
import PlaygroundSupport

// set a var for the main VC
let menuBoard = MenuBoard()

// there's an issue in version 2.1 of playgrounds
// we need to embed the VC into a navigation controller
let navigationController = UINavigationController(rootViewController: menuBoard)
// if you don't want the menu bar, set is Hidden to true
menuBoard.navigationController?.isNavigationBarHidden = true

PlaygroundPage.current.liveView = navigationController
PlaygroundPage.current.needsIndefiniteExecution = true

menuBoard.printHeading("Aloha Pizza")
menuBoard.printHeading("Our Pizzas Today")
menuBoard.printMenu()
