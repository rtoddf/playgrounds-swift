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

//func getTodaysDate() -> String {
//    let formatter = DateFormatter()
//    // initially set the format based on your datepicker date / server String
//    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
//    formatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
//    
//    // string purpose I add here
//    let myString = formatter.string(from: Date())
//    // convert your string to date
//    let yourDate = formatter.date(from: myString)
//    
//    //then again set the date format whhich type of output you need
//    formatter.dateFormat = "E, MMM dd"
//    // again convert your date to string
//    let myStringafd = formatter.string(from: yourDate!)
//    
//    //    let aDate = Date()
//    //
//    //    formatter.dateFormat = "E, dd MMM yyyy HH:mm:ss z"
//    //    formatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
//    //    let date = formatter.date(from: aDate)
//    
//    //    let currentDateTime = Date().toDateString(inputDateFormat: "MM/dd/yyyy h:mm:ss a", ouputDateFormat: "h a").lowercased()
//    
//    print("currentDateTime: \(myStringafd)")
//    
//    return "else"
//}
