                                            //Functions
//Defining and Calling Functions
func greet(person:String) ->  String {
    let greeting = "Hello" + person + "!"
    return greeting
}
print(greet(person: "John"))
///short version
func greetAgain(person:String) -> String {
    return "Hello again  " + person + "."
}
print(greetAgain(person: "Steve"))


//Function Parameters and Return Values

///Functions Without Parameters
func sayHelloWorld()->String{
    return "Hello world"
}
print(sayHelloWorld())

///Functions With Multiple Parameters
func multipleGreet(person:String,alreadyGreeted:Bool) ->String {
    if alreadyGreeted{
        return greetAgain(person: person)
    }else {
        return greet(person: person)
    }
}
print(multipleGreet(person: "Deniz", alreadyGreeted: true)) //Hello again  Deniz.

///Functions Without Return Values
func withoutReturnValues(person:String) {
 print(person)
}
withoutReturnValues(person: "Max")
/////different version
func printAndCount(string:String) ->Int {
    print(string)
    return string.count
}
func printWithoutCounting(string:String) {
    let _ = printAndCount(string: string)
}
print(printAndCount(string: "Edward")) //// prints "edward" and returns a value of 6
printWithoutCounting(string: "Elliot")

///Functions with Multiple Return Values
func minMax(array:[Int]) -> (min:Int,Max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array{
        if value < currentMin {
            currentMin = value
        }
        else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}

let (min,max) = minMax(array: [5,12,6,6,74,12,6,43])
print("min : \(min) max : \(max)")

///Optional Tuple Return Types //we need to control the array it’s passed.
func optionalMinMax(array:[Int]) -> (min:Int,max:Int)? {
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}
///how to use optional function
if let numbers = optionalMinMax(array: [12,54,75,12,6,42,9,4,1,6]){
    print("Optional min-max function min: \(numbers.min) max: \(numbers.max)")
}

//Function Argument Labels and Parameter Names
func someFunction(firstParamaterName:Int,secondParamaterName:Int) ->Int{
    return firstParamaterName + secondParamaterName
}
someFunction(firstParamaterName: 3, secondParamaterName: 5)

///Specifying Argument Labels
func someArgumentLabel(label firstParamaterName:Int) -> String {
    return String(firstParamaterName)
}
print(someArgumentLabel(label: 3))

///greet version
func argumentGreet(person:String,from homeTown:String) ->String {
    return "Hello \(person) Glad you could visit from \(homeTown)."
}
print(argumentGreet(person: "Miyaki", from: "Okiniwa"))

///Omitting Argument Labels -> "_"
func escapeFromLabels(_ data:String,_ number:Int)->String{
    return "Hello \(data) you have this number \(number)"
}
print(escapeFromLabels("Marie", 27))

///Default Parameter Values
func defaultValues(paramaterWithoutDefault:Int,paramaterWithDefault:Int = 12) ->Int {
    return paramaterWithoutDefault + paramaterWithDefault
}
print(defaultValues(paramaterWithoutDefault: 3,paramaterWithDefault: 10)) // 10 + 3 = 13
print(defaultValues(paramaterWithoutDefault: 3)) // 12 + 3 = 15

///Variadic Parameters "..." This make array
func calculateArithmetic(_ numbers:Double...)->Double {
    var total:Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print("Arithmetic result : ",calculateArithmetic(1,2,3,4,5))
print("Arithmetic result : ",calculateArithmetic(3, 8.25, 18.75))


//Function Types
func addTwoInts(_ a:Int,_ b:Int)-> Int {
    return a + b
}
func multiplyTwoInts(_ a:Int,_ b:Int)-> Int {
    return a * b
}

///Using Function Types nice trick
var mathFunction :(Int,Int)-> Int = addTwoInts //“Define a variable called mathFunction, which has a type of ‘a function that takes two Int values, and returns an Int value.’ Set this new variable to refer to the function called addTwoInts.”
print("Result: \(mathFunction(2, 3))")
mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))") // Prints "Result: 6"
///short version
var anotherMathFunction = addTwoInts // anotherMathFunction is inferred to be of type (Int, Int) -> Int

//Function Types as Parameter Types
func printMathResult(_ mathFunction:(Int,Int)->Int,_ a:Int,_ b:Int){
 print("Result : \(mathFunction(a,b))")
}
printMathResult(addTwoInts,2,3)

//Function Types as Return Types
func stepForward(_ input:Int)->Int{
    return input + 1
}
func stepBackward(_ input:Int)-> Int{
    return input - 1
}
func chooseStepFunction(backward:Bool)-> (Int)->Int {
    return backward ? stepBackward :stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0) //// moveNearerToZero now refers to the stepBackward() function
///
print("Counting to zero ! ")
while currentValue != 0 {
    print(currentValue)
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//nested Functions
func nestedChooseStepFunction(backward:Bool)->(Int)->Int{
    func stepForward(input:Int)->Int {return input+1}
    func stepBackward(input:Int)->Int {return input-1}
    return backward ? stepBackward : stepForward
}
var nestedCurrentValue = -10
let nestedMoveNearerToZero = nestedChooseStepFunction(backward: nestedCurrentValue > 0) //return function
while nestedCurrentValue != 0 {
    print("\(nestedCurrentValue)... ")
    nestedCurrentValue = nestedMoveNearerToZero(nestedCurrentValue)
}
print("zero!")

