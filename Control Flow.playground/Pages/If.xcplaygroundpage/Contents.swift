var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32{
    print("It's very cold. Consider wearing a scarf.") //// Prints "It's very cold. Consider wearing a scarf."
}
temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Prints "It's not that cold. Wear a t-shirt."
temperatureInFahrenheit = 90

if temperatureInFahrenheit<=32 {
    print("It's very cold. Consider wearing a scarf.")
}else if temperatureInFahrenheit>=86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}else {
    print("It's not that cold. Wear a t-shirt.")
}
///// Prints "It's really warm. Don't forget to wear sunscreen."

