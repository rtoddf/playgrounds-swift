import UIKit

let totalSeconds = 100000
let secPerMin = 60
let minPerHour = 60
let hourPerDay = 24

func pluralize(value:Int, unit:String) -> String {
    return value > 1 ? unit + "s" : unit
}

func getSmallerUnits(seconds:Int) -> (Int, Int, Int, Int) {
    let s = seconds %  secPerMin
    let m = (seconds / secPerMin) % minPerHour
    let h = ((seconds / secPerMin) / minPerHour) % hourPerDay
    let d = ((seconds / secPerMin) / minPerHour) / hourPerDay

    return (d, h, m, s)
}

let (d, h, m, s) = getSmallerUnits(seconds: totalSeconds)

print("\(d) \(pluralize(value: d, unit: "day")), \(h) \(pluralize(value: h, unit: "hour")), \(m) \(pluralize(value: m, unit: "minute")), \(s) \(pluralize(value: s, unit: "second"))")
