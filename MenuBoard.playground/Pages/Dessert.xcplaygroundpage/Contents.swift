//:# Menu Board
//: A menu of desserts to print to the live view

import UIKit
import PlaygroundSupport

let menuBoard = MenuBoard()
let navigationController = UINavigationController(rootViewController: menuBoard)
menuBoard.navigationController?.isNavigationBarHidden = true

PlaygroundPage.current.liveView = menuBoard


menuBoard.printHeading("Yummy Desserts")

menuBoard.list = ["Mango Pie", "Duke Pie", "Sundae", "Chocolate Surfing"]
menuBoard.prices = [5.99, 6.99, 10.95, 9.95]

menuBoard.printMenu()
