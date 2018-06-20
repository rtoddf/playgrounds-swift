import UIKit
import PlaygroundSupport

class OrderTableViewController:UITableViewController {
    var menuItems = [String]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }

        cell?.textLabel?.text = menuItems[indexPath.row]
//        cell2.textLabel?.text = menuItems[indexPath.row]
        
        return cell!
//        return cell2
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        
        if row == 0 {
            PlaygroundPage.current.assessmentStatus = PlaygroundPage.AssessmentStatus.fail(hints: ["Try and erupting Big Island"], solution: "That's so mainland!")
        } else {
            PlaygroundPage.current.assessmentStatus = .pass(message:"You selected a \(menuItems[row])")
        }
        
    }
}

let orderTableViewController = OrderTableViewController()
let navigationController = UINavigationController(rootViewController: orderTableViewController)
orderTableViewController.navigationController?.isNavigationBarHidden = true

PlaygroundPage.current.liveView = navigationController
//PlaygroundPage.current.needsIndefiniteExecution = true

orderTableViewController.menuItems = ["Pepperoni", "Sausage", "Cheese", "Huli CHicken", "Surfboard Vegan", "Deep Diver", "Big Island", "Sweet Home Chicago"]
