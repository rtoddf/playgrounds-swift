import UIKit

let a = ["Icon1", "Icon2", "Icon3"]
let b = ["icon1.png", "icon2.png", "icon3.png", "icon4.png", "icon5.png", "icon6.png"]
let c = ["icon1.jpg", "icon2.jpg", "icon3.jpg", "icon4.jpg", "icon5.jpg", "icon6.jpg"]

var result:[String] = []

let scheme = [1, 2, 2]

for index in 0..<a.count {
    result.append(a[index])
    
    result.append(b[index])
    result.append(b[index + 1])
    
    result.append(c[index])
    result.append(c[index + 1])
}

print("result: \(result)")

let combinedArray = [a, b, c]

for (i, array) in combinedArray.enumerated() {
//    for index in 0..<a.count {
    for s in scheme {
//        print("s: \(s)")
    }
//
//    print("i: \(i)")
//    print(combinedArray[i])
}
