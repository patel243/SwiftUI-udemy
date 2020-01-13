import UIKit

// WHILE LOOP

var myNumber = 0

while myNumber < 10 {
  myNumber+=1
}
print(myNumber)

var characterAlive = true

while characterAlive == true {
  print("Character is alive.")
  characterAlive = false
}


// FOR LOOP

let arr = [1,2,3,4,5,6,7,8,9,10]

for number in arr {
  print(number)
}

for myNewInteger in 1 ... 5 {
  print(myNewInteger)
}
