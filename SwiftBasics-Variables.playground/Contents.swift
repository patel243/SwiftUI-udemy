import UIKit

var str = "Hello, playground"

var myNumber = 5 * 4

// By default, adds a new line at the end of the print "\n"
print(myNumber)



// STRINGS

var userName = "Kyle"

// all variables are classes that have pre-built functions inside
//userName.append("y")
userName.lowercased()

var userSurname = "Meserve"

// variables can be changed anytime.
//userName = "Test"

print (userName + " " + userSurname)



// INTEGERS & DOUBLE & FLOAT

// integer
let userAge = 26
let testNumber = 4
//userAge/testNumber

// double
let pi = 3.14
let userAgeD = 26.0
let testNumberD = 4.0

userAgeD / testNumberD

//userAge = 27 <-- let is swift's constant - can't be changed



// BOOLEAN

var myBoolean = true
myBoolean = !myBoolean



// VARIABLE TYPES

// Once you assign a type to a variable, it can never be changed later.

// Assigning a type by assigning a class when variable is declared is done like this:
let myString : String = "50"
let anotherNumber : Int = 10

// Int8 Int16 ...etc are all referring to the bits used to store the information.

//defined variable:
let myVariable : String

// initialization is different than defining the variable. Can't use the variable before it is given a value and initialized
//myVariable.uppercased()
myVariable = "test" //This variable can't be changed ever again after it has been assigned and initialized

