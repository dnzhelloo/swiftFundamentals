//Using closures as parameters when they accept parameters
//We’ve been using () -> Void to mean “accepts no parameters and returns nothing”,
func travel(action:(String)->Void) {
    print("I'm getting ready to go.")
    action("Berlin")
    print("I arrived!")
}
travel{(place:String) in
    print("I'm going to \(place) in my car")
}

//When would closures with parameters be used as parameters?
let changeSpeed = {(speed:Int) in
    print("Changing speed to \(speed)km/h")
}
func buildCar(name:String,enginee:(Int)-> Void){
    print("your car is name\(name)")
    enginee(85)
    print("we build car")
}

//Using closures as parameters when they return values
////We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can replace that Void with any type of data to force the closure to return a value.
func travel2(action:(String)->String){
    print("I'm getting ready to go.")
    let description = action("Norway")
    print(description)
    print("I arrived!")
}
travel2{ (place:String) in
    return "I'm going to \(place) in my car"
}
///When would you use closures with return values as parameters to a function?
func reduce(_ values:[Int],using closure:(Int,Int)->Int) -> Int{
    // start with a total equal to the first value
    var currentValue = values[0]
    for value in values[1...]{
        // call our closure with the current value and the array element, assigning its result to our current value
        currentValue = closure(currentValue,value)
        
    }
    // send back the final current value
    return currentValue
}
let values = [10,20,30]
let sum = reduce(values) { (runningTotal:Int,value:Int) in
    return runningTotal + value
}
let multiplied = reduce(values) { (runningTotal: Int, next: Int) in
    runningTotal * next
}
let sum2 = reduce(values, using: +)

//Shorthand parameter names
func travel3(action:(String)->String){
    print("I'm getting ready to go.")
    let description = action("Köln")
    print("Description :",description)
    print("I arrived!")
}
travel3 { (place:String)->String in
    return "I'm going to \(place) in my car"
}
travel3 { place ->String in
    return "I'm going to \(place) in my car"
}
travel3 { place in
    return "I'm going to \(place) in my car"
}
