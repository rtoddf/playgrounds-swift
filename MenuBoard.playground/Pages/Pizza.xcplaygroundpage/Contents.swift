//:# Menu Board
//: A menu of pizzas to print to the live view

import UIKit
import PlaygroundSupport

//:## Introduction
//: **Menuboard** is part one of this proposal for the *Huli Pizza Company* Menu System. The menuboard is a static page which the restaurant uses on displays to show menu items to customers in-store.

/*:
 ### Features
 **Menuboard** is full of features:
+ an image of a pizza
+ an adaptable layout that size to the display
+ easily changeable prices and menu items
+ fun, warm font that has a chalkboard feel
 */

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

//: [Desserts Menu](@next)
//:
//:[cnn.com]:http://www.cnn.com
//: News at [cnn.com] (c)2017
