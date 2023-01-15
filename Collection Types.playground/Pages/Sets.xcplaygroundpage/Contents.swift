                                                //Sets

//A set stores distinct(farkli) values of the same type in a collection with no defined ordering.

/* sets are unordered and cannot contain duplicates,
they can instead store them in a seemingly random order that optimizes them for fast retrieval. So, when you say “does this set contain item X,” you’ll get an answer in a split second no matter how big the set is.
 but in the array :
 
 arrays must store their items in the order you give them, so to check whether item X exists in an array containing 10,000 items Swift needs to start at the first item and check every single item until it’s found – or perhaps it isn’t found at all.
 https://www.avanderlee.com/swift/array-vs-set-differences-explained/
 Go for an Array if:

 Order is important
 Duplicate elements should be possible
 Performance is not important
 
 Go for a Set if:

 Order is not important
 Unique elements is a requirement
 Performance is important
*/

//Creating and Initializing an Empty Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.") ///// Prints "letters is of type Set<Character> with 0 items."

//insert
letters.insert("b") ///// letters now contains 1 value of type Character
letters = [] //// letters is now an empty set, but is still of type Set<Character>


//Creating a Set with an Array Literal
var favoriteGenres:Set<String> = ["Rock", "Classical", "Hip hop"]
//short form
var shortFavoriteGenres :Set = ["Rock", "Classical", "Hip hop"]

//Accessing and Modifying a Set
print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    print("there is not music genres")
}else {
    print("there is music genres ")

}
//insert
favoriteGenres.insert("Jazz") //// favoriteGenres now contains 4 items

//remove
if let remevodGenre = favoriteGenres.remove("Jazz"){
    print("\(remevodGenre) is cleaned ")
}else {
    print("we didn't anything")
}

//contains
if favoriteGenres.contains("Rock"){
    print("wow we are super rock")
}else {
    print("ooo why you didn't add rock genres ")
}

//Iterating Over a Set
for genre in favoriteGenres {
    print(genre)
}
// with order :  Swift’s Set type doesn’t have a defined ordering. To iterate over the values of a set in a specific order, use the sorted() method,
for genres in favoriteGenres.sorted(){
    print(genres)
}
