//Advanced closures

//Closures with multiple parameters
func travel(action:(String,Int)->String){
    print("I'm getting ready to go.")
    let description = action("Berlin",300)
    print(description)
    print("I arrived!")
}
travel{ (place:String,km:Int) in
    return "We are going to \(place) it will be \(km) km."
}
