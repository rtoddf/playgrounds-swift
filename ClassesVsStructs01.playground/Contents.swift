import UIKit

/* classes - reference types */
/* classes have inheritance - so you can get all the things the superclass has */
/* this is good, but creates bloat you may not need */
class Macbook {
    var year:Int
    var color:String
    
    init(year:Int, color:String) {
        self.year = year
        self.color = color
    }
}

let myMacbook = Macbook(year: 2016, color: "Black")
let stolenMacbook = myMacbook
stolenMacbook.color = "red"

print(myMacbook.color)
/* prints red */

/* structs - value types - passes around copies */
/* lightweight and clean because there is no bloat - considered more preformant */
struct iPhone {
    var number:Int
    var color:String
}

var myIphone = iPhone(number: 6, color: "black")
var stolenIphone = myIphone
stolenIphone.color = "rose gold"

print(myIphone.color)
/* prints black */
/* you're passing a copy */
