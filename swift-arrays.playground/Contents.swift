import UIKit


// ARRAYS

var myFavoriteMovies = ["The Lord of the Rings", "Doctor Sleep", "Gone Girl"]
//var myFavoriteMovies = ["The Lord of the Rings", "Doctor Sleep", "Gone Girl", 5] as [Any]

// as -> casting

myFavoriteMovies.count

myFavoriteMovies.last

myFavoriteMovies.sort()

for movie in myFavoriteMovies {
  print(movie.lowercased())
}

var myNumberArray = [1,2,3,4,5,6,7]


// SETS

// a set is an array, but it has unique values inside of it
// a set is also an unordered array, so you can't just grab the first item (no index)
var mySet : Set = [1,2,3,4,5,1]
mySet.first //doesn't return the first in order

// sets are good for if you don't want any duplicates.

var multipleMovies = ["The Lord of the Rings", "Doctor Sleep", "Gone Girl","The Lord of the Rings", "Doctor Sleep", "Gone Girl","The Lord of the Rings", "Doctor Sleep", "Gone Girl","The Lord of the Rings", "Doctor Sleep", "Gone Girl","The Lord of the Rings", "Doctor Sleep", "Gone Girl","The Lord of the Rings", "Doctor Sleep", "Gone Girl","The Lord of the Rings", "Doctor Sleep", "Gone Girl",]
var multipleMovesSet = Set(multipleMovies)
print(multipleMovesSet)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [4,5,6]

var mySet3 : Set = mySet1.union(mySet2) // can use .union to combine two sets into one
print(mySet3)



// DICTIONARIES

// key-value pairs

var myFavoriteDirectors = ["The Lord of the Rings" : "Peter Jackson", "Knives Out" : "Rian Johnson (lol)"]

myFavoriteDirectors["The Lord of the Rings"] = "The real-life hobbit man"

myFavoriteDirectors["Star Wars stuff"] = "J.J. Abrams"

print(myFavoriteDirectors)

// Doesn't have to be string to string relations

var myDictionary = ["Run" : 100, "Swim" : 200, "Basketball" : 300]
myDictionary["Run"]
