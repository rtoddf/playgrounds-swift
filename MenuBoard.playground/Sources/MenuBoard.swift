import UIKit

public class MenuBoard:UIViewController {
    
    public var list = ["Pepperoni", "Sausage", "Cheese", "Huli Chicken", "Surfboard Vegan", "Deep Diver", "Big Island"]
    public var prices = [10.95, 11.95, 8.15, 15.75, 13.95, 16.75, 21.95]
    
    var textView:UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont(name: "Chalkduster", size: 22.0)
        view.textAlignment = .center
        view.textColor = .white
        view.backgroundColor = .clear
        view.isEditable = false
        return view
    }()
    
    let imageView:UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "surfPizza")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    //    var pizzaTextView:UITextView = {
    //        let view = UITextView()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.font = UIFont(name: "Chalkduster", size: 16.0)
    //        view.textColor = .white
    //        view.backgroundColor = .clear
    //        view.isEditable = false
    //        return view
    //    }()
    
    var headingText = "Huli Pizza Company \n\n"
    //    var menuText = ""
    
    func addViews() {
        view.addSubview(imageView)
        view.addSubview(textView)
        textView.text = headingText
        //        view.addSubview(pizzaTextView)
        //        pizzaTextView.text = menuText
        
        var constraints:[NSLayoutConstraint] = []
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.3, constant: 0.0)]
        
        constraints += [NSLayoutConstraint.init(item: textView, attribute: .top, relatedBy: .equal, toItem: imageView, attribute: .bottom, multiplier: 1.0, constant: 10.0)]
        constraints += [NSLayoutConstraint.init(item: textView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)]
        constraints += [NSLayoutConstraint.init(item: textView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)]
        constraints += [NSLayoutConstraint.init(item: textView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: 150.0)]
        
        //        constraints += [NSLayoutConstraint.init(item: pizzaTextView, attribute: .top, relatedBy: .equal, toItem: textView, attribute: .bottom, multiplier: 1.0, constant: 10.0)]
        //        constraints += [NSLayoutConstraint.init(item: pizzaTextView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)]
        //        constraints += [NSLayoutConstraint.init(item: pizzaTextView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)]
        //        constraints += [NSLayoutConstraint.init(item: pizzaTextView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: 100.0)]
        
        view.addConstraints(constraints)
        
        //        let imageHeight = view.frame.height * 0.25
        //
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": imageView]))
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": textView]))
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": pizzaTextView]))
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(\(imageHeight))]-4-[v1(100)][v2(150)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": imageView, "v1": textView, "v2": pizzaTextView]))
    }
    
    public func printHeading(_ newText:String) {
        headingText += newText + "\n"
        textView.text = headingText
    }
    
    public func printMenu() {
        for index in 0..<list.count {
            printHeading("\(list[index])  \(prices[index])")
        }
    }
    
    //    func printMenu(_ newText:String) {
    //        menuText += newText + "\n"
    //        pizzaTextView.text = menuText
    //    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0.25, alpha: 0.9)
        addViews()
    }
}
