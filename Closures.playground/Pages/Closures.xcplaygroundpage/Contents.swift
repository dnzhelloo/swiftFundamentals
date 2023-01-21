//Creating basic closures
let driving = {
    print("I'm driving car")
}
driving()

//Accepting parameters in a closure
let drivingParamaters = { (place:String) in
    print("I'm going to \(place) in my car")
}
drivingParamaters("Berlin")
///Why are Swift’s closure parameters inside the braces?
func pay(user:String,amount:Int) {
    print(user," :",amount)
}
let payment = { (user:String,amount:Int) in
    print(user," :",amount)
}
pay(user: "Edward", amount: 2532)
payment("john",235)

//Returning values from a closure
let drivingWithReturn = {(place:String)->String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("Oslo")
print(message)
///How do you return a value from a closure that takes no parameters?
let paymentWithoutParameters = { ()->Bool in
    print("Paying an anonymous person…")
    return true
}
paymentWithoutParameters()

//Closures as parameters
func travel(action:()->Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//Trailing closure syntax
travel {
    print("I'm driving in my car -> Trailing closure syntax")
}
///Why does Swift have trailing closure syntax?
func animate(duration:Double,animations:()->Void){
    print("Starting a \(duration) second animation…")
    animations()
}
animate(duration: 3000, animations: {
    print("Fade out image")
})
//short version recommended
animate(duration: 2500){
    print("Short version fade out image")
}
