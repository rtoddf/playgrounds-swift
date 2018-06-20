//:# Desserts Menu
//: The menu is not just for pizza, but for desserts or any other selection. You can change the content easily.

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

//:
//: Go to the [Previous](@previous)
//: or [Pizza menu](Pizza) page
