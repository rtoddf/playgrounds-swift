import UIKit

let aDate:String = "Fri, 06 Apr 2018 09:25:00 EDT"
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "E, dd MMM yyyy HH:mm:ss z"
dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
let date = dateFormatter.date(from: aDate)

print("\(aDate)")

//guard let newDate = date else { return nil }

if let newDate = date {
    print("\(newDate)")
}

let currentDateTime = Date()
let calendar = Calendar.current
let components = calendar.dateComponents([.year,.month,.day,.hour,.minute,.second], from: currentDateTime)
//let components = calender.dateComponents([.year,.month,.day,.hour,.minute,.second], from: date)

