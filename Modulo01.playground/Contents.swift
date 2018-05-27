import UIKit

let totalSeconds = 100000
let minDivisor = 60
let hourDivisor = 60
let dayDivisor = 24

func pluralize(value:Int, increment:String) -> String {    
    return value > 1 ? increment + "s" : increment
}

func getMinutes(seconds:Int) -> (Int, Int, Int, Int) {
    let sec = seconds %  minDivisor
    let min = (seconds / minDivisor) % hourDivisor
    let hr = ((seconds / minDivisor) / hourDivisor) % dayDivisor
    let days = ((seconds / minDivisor) / hourDivisor) / dayDivisor

    return (days, hr, min, sec)
}

let (day, hour, minute, second) = getMinutes(seconds: totalSeconds)

print("\(day) \(pluralize(value: day, increment: "day")), \(hour) \(pluralize(value: hour, increment: "hour")), \(minute) \(pluralize(value: minute, increment: "minute")), \(second) \(pluralize(value: second, increment: "second"))")
