                                            //For-In Loops
let names = ["Alex","John","Edward"]
for name in names {
    print("Hello \(name)")
}
// key and value from dictionary
let numberOfLegs = ["Spider":8,"Ant":4,"Cat":4]
for (animalName,legCount) in numberOfLegs {
    print("\(animalName)'s have \(legCount) legs")
}

// numeric ranges +1
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//don’t need each value
let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

//half open range (..<)
let minutes = 60
for tickMark in 0..<minutes{
    print(tickMark)
}
