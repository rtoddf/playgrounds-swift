struct Friend {
    var name:String
    var sex:String
    var profession:String
    var age:Int
}

let marcie = Friend(name: "Marcie", sex: "F", profession: "Actor", age: 43)
let manny = Friend(name: "Manny", sex: "M", profession: "Developer", age: 37)
let ian = Friend(name: "Ian", sex: "M", profession: "Developer", age: 29)
let katie = Friend(name: "Katie", sex: "F", profession: "Manager", age: 36)

let friends = [marcie, manny, ian, katie]

let women = friends.filter({ return $0.sex == "F" })
print(women)


let newAges = friends.map({ return $0.age + 1 })
print(newAges)
