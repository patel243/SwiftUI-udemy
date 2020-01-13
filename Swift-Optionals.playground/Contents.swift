import UIKit

//OPTIONALS

var myName: String?

myName?.uppercased()
// other optional is an exclamation point - That means we are certain that the variable will be initialized before we hit this.

// can't put an optional marker on something that is not optional (ie. a string is not optional unless the string doesn't exist yet)

var myAge = "5"

// can use ?? to provide a default value
var myInteger = (Int(myAge) ?? 1) * 5

// Can also use an if statement and variable declaration to see if the user has made an input correctly or not
if let myNumber = Int(myAge) {
  print(myNumber)
  print("myAge is an Int")
} else {
  print("myAge is not an Int")
}
