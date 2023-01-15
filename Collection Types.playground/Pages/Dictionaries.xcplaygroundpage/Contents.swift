                                                //Dictionaries [Key: Value]
//Creating an Empty Dictionary
var namesOfIntegers :[Int:String] = [:] //// namesOfIntegers is an empty [Int: String] dictionary
namesOfIntegers[16] = "sixteen" //// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:] // empty

//Creating a Dictionary with a Dictionary Literal
var airports :[String:String] = ["YYZ":"Toronto person","DUB":"Dublin"]
//short version
var shortAirports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//Accessing and Modifying a Dictionary
print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
}else {
    print("The airports dictionary isn't empty.")
}

//add new item
airports["SAW"] = "Sabiha Gokcen"
//update
airports["SAW"] = "Sabiha Airports" ///["YYZ": "Toronto person", "DUB": "Dublin", "SAW": "Sabiha Airports"]

//update value and get old value
if let oldValue = airports.updateValue("Ataturk Havalimani", forKey: "YYZ"){
    print("The old value for YYZ was \(oldValue) but new version \(airports["YYZ"]!)")
}

//get value with using optional
if let airportName = airports["YYZ"]{
    print("The name of the airport is \(airportName).")
}else {
    print("That airport isn't in the airports dictionary.")
}

//remove key - value
airports["APPL"] = "Apple International" ///["YYZ": "Ataturk Havalimani", "APPL": "Apple International", "DUB": "Dublin", "SAW": "Sabiha Airports"]
airports["APPL"] = nil //["YYZ": "Ataturk Havalimani", "DUB": "Dublin", "SAW": "Sabiha Airports"]

//get removed value
if let removedValue = airports.removeValue(forKey: "DUB"){
    print("The removed airport's name is \(removedValue).")
}else {
    print("The airports dictionary doesn't contain a value for DUB.")
}

//Iterating Over a Dictionary
for (airportCode,airportName) in airports{
    print("\(airportCode): \(airportName)")
}

//just keys
for airportCode in airports.keys{
    print("Airport code: \(airportCode)")
}
for airportName in airports.values{
    print("Airport name: \(airportName)")
}

//initialize a new array with the keys or values property:
let airportsCodes = [String](airports.keys) //// airportCodes is ["LHR", "YYZ"]
let airportsNames = [String](airports.values) ///// airportNames is ["London Heathrow", "Toronto Pearson"]
