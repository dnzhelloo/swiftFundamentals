                                                //Arrays
//Arrays are ordered collections of values.
//Creating an Empty Array
var someInts:[Int] = []
print("SomeInts is of type[Int] with \(someInts.count) items")
someInts.append(3) //// someInts now contains 1 value of type Int
someInts = [] //// someInts is now an empty array, but is still of type [Int]

//Creating an Array with an Array Literal
var shoppingList:[String] = ["Eggs","Milk"] //// shoppingList has been initialized with two initial items
//short version
var shortShoppingList = ["Eggs", "Milk"]

//Accessing and Modifying an Array
print("The shopping list contains \(shoppingList.count) items.") //// Prints "The shopping list contains 2 items."

if shoppingList.isEmpty{
    print("The shopping list is empty.")
}else{
    print("The shopping list isn't empty.") //// Prints "The shopping list isn't empty."
}

shoppingList.append("Flour") //// shoppingList now contains 3 items, and someone is making pancakes
//Alternatively
shoppingList += ["baking powder"] //// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"] ///// shoppingList now contains 7 items
var firstItem = shoppingList[0] ///// firstItem is equal to "Eggs"
shoppingList[0] = "Six eggs" //// the first item in the list is now equal to "Six eggs" rather than "Eggs"

//range of values at once arrays
print(shoppingList) ///["Six egs", "Milk", "Flour", "baking powder", "Chocolate Spread", "Cheese", "Butter"]
shoppingList[4...6] = ["Bananas","Apples"] ///["Six eggs", "Milk", "Flour", "baking powder", "Bananas", "Apples"] lost chocolate ,cheese
print(shoppingList)

//insert an item into the array at a specified index,
shoppingList.insert("Maple Syrup", at: 0) ///// shoppingList now contains 7 items // "Maple Syrup" is now the first item in the list

//remove item
let mapleSyrup = shoppingList.remove(at: 0) //return 0 index value
firstItem = shoppingList[0] //six eggs

//remove last
let apples = shoppingList.removeLast() //// shoppingList now contains 5 items, and no apples

//Iterating Over an Array
for item in shoppingList {
    print(item)
}

// use array with index of each item
for (index,value) in shoppingList.enumerated(){
    print("Item \(index + 1): \(value)")
}
