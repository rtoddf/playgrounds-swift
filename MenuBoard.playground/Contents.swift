//:# Menu Board
//: A menu to print to the live view

import UIKit
import PlaygroundSupport

class MenuBoard:UIViewController {
    
    var textView = UITextView()
    var menuText = "Huli Pizza Company \n"
    
    func addViews() {
        textView = UITextView(frame: view.frame)
        textView.font = UIFont(name: "Chalkduster", size: 22.0)
        textView.textColor = .white
        textView.backgroundColor = UIColor(white: 0.25, alpha: 0.9)
        textView.isEditable = false
        textView.text = menuText
        view.addSubview(textView)
    }
    
    func print(_ newText:String) {
        menuText += newText + "\n"
        textView.text = menuText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        addViews()
    }
}


let menuBoard = MenuBoard()
PlaygroundPage.current.liveView = menuBoard
PlaygroundPage.current.needsIndefiniteExecution = true

menuBoard.print("Aloha Pizza")
menuBoard.print("Our Pizzas Today")

let list = ["Perrperoni", "Saudage", "Cheese", "Huli Chicken", "Surfboard Vegan", "Deep Diver", "Big Island"]
let prices = [10.95, 11.95, 8.15, 15.75, 13.95, 16.75, 21.95]

for index in 0..<list.count {
    menuBoard.print("\(list[index])  \(prices[index])")
}







