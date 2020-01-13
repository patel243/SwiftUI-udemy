import UIKit

// IF STATEMENTS

var myAge = 30

if myAge < 30 {
  print("You're younger than 30.")
} else if myAge > 30 {
  print("You're older than 30.")
} else {
  print("You're 30 years old.")
}

// And and Or operators are still && and || like in JavaScript


// FUNCTIONS

func ageTester(num: Int) -> String {
  if num < 30 {
    return "You're younger than 30."
  } else if num > 30 {
    return "You're older than 30."
  } else {
    return "You're 30 years old."
  }
}

print(ageTester(num: 15))
print(ageTester(num: 30))
print(ageTester(num: 45))


func sumFunction(x: Int, y: Int) -> Int {
  return x + y
}

print(sumFunction(x: 5, y: 3))

