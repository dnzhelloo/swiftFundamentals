                                            //The basics
//Constant And Variables
let username = "Johm"
var surname = "Apsed"
surname = "Max"


//Type Annotations
var welcomeMessage:String = "Hello World!"
welcomeMessage = "Hello new world!"
//define multiple line
var red,green,blue :Double


//Type Safety and Type Inference
let meaningOfLife = 42 //// meaningOfLife is inferred to be of type Int
let anotherPi = 3 + 0.14159 //// anotherPi is also inferred to be of type Double


//Booleans
let image = false
let maps = true

if maps {
    print("We have maps") // output : We have maps
}else{
    print("We don't have maps")
}


//Tuples
let http404Error = (404,"Not Found") //// http404Error is of type (Int, String), and equals (404, "Not Found")
//decompose a tuple
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)") // Prints "The status code is 404"
print("The status message is \(statusMessage)") // Prints "The status message is Not Found"
//ignore values
let (justStatusCode,_) = http404Error
print("The just status code is \(justStatusCode)")

//different version
let http200Status = (statusCode:200,description:"ok")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")


//Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) //// convertedNumber is inferred(cikarim) to be of type "Int?", or "optional Int"
//nil You can’t use nil with non-optional constants and variables (let - var)
var responseCode :Int? = 404 //// serverResponseCode contains an actual Int value of 404
responseCode = nil ///// serverResponseCode now contains no value
var surveyAnswer: String? //// surveyAnswer is automatically set to nil
//If Statements and Forced Unwrapping
if convertedNumber != nil{
    print("convertedNumber contains some integer value.") //// Prints "convertedNumber contains some integer value."
}
//forced unwrapping of the optional’s value
print("convertedNumber has an integer value of \(convertedNumber!).")

//Optional Binding if-let
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)") //// Prints "The string "123" has an integer value of 123"
}else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
//short spelling
if let convertedNumber {
    print(convertedNumber)
}

//Implicitly Unwrapped Optionals
let possibleString :String? = "An optional string"
let forcedString :String = possibleString! //// requires an exclamation point

let assumedString:String! = "An implicity unwrapped Optional String"
let implicitString:String = assumedString ///no need for an exclamation point (!)
let optionalString = assumedString //// The type of optionalString is "String?" and assumedString isn't force-unwrapped.

//Optional V2 https://www.mobilhanem.com/swift-optional/

//Optional Değişken Tanımlama
var myname:String?
var secondname:String? = "Apsed"
var usersurname:String = "edward"
myname="Deniz"

//Force Unwrapping
////Unwrapping ile Optionals tipindeki değişkenlerimizi normal tipteki değişkenlerimize çeviriyoruz.
///Optional değişkenimizi Force unwrapping uyguladığımızda değeri nil olursa eğer uygulamamız crash olacaktır. Bu da yazılımcıların istemediği bir durumdur. Force Unwrapping işlemini uygulamanızı çok tavsiye etmiyorum.
var newName = myname!
var newSecondName = secondname!

//Implicit unwrapping Değişkenlerinizi sürekli takip etmek değer atanmış mı atanmamış mı diye takip etmek çokta güzel bir yöntem değildir. önerilmiyor
let kullaniciSoyadi: String! = "Buyruk"
let implicitKullaniciSoyadi: String = kullaniciSoyadi
print(implicitKullaniciSoyadi)

//Optional Binding . Force Unwrapping e göre en önemli artısı uygulamamızın crash olmasının önüne geçmiş oluyoruz. tavsiye edilir
let imageUrl:String? = "https://secure.gravatar.com/avatar/220da45006025ace2e560bbd8ea1fb25?s=200&d=mm&r=g"
if let image = imageUrl {
    print(image)
}else {
    print("there is not image url of user")
}

//If Let Yerine Guard Let Guard let kullanarak yazdığımız kod un okunabilirliğini artırmakla kalmayıp yazdığımız kod satır sayısınıda azaltmış oluyoruz. Onerilir.!!!
func checkImageUrl(){
    
    //if not
    guard let newImageUrl = imageUrl else {
        print("there is not image of user")
        return
    }
    // if any
    print("new imageUrl : \(newImageUrl)")
}

checkImageUrl()



