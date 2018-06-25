import UIKit

let a = ["Icon1", "Icon2", "Icon3"]
let b = ["icon1.png", "icon2.png", "icon3.png", "icon4.png", "icon5.png", "icon6.png"]
let c = ["icon1.jpg", "icon2.jpg", "icon3.jpg", "icon4.jpg", "icon5.jpg", "icon6.jpg"]
let scheme = [0, 1, 1]

//let range = a[...2]

//print(range)
var newArray:[String] = []

let combinedArray = [a, b, c]

for (i, array) in combinedArray.enumerated() {
//    //    for index in 0..<a.count {
    for s in scheme {
//        print("s: \(s)")
        newArray.append(contentsOf: combinedArray[i])
    }
    
//    print("i: \(i)")
//    print(combinedArray[i])
}

print(newArray)
