import UIKit

var str = "Hello, playground"


var arr = ["test", "test2"]

var newArr: [String] = []

for word in arr {
  newArr.append(word)
}

print(newArr)
var duplicateArray: [String] = ["Five", "words", "in", "this", "array", "it", "is", "a", "cool", "array"]

func checkArrForDuplicates (array: [String]) -> String {
  var wordsUsed: [String] = []
  var duplicateWords: [String] = []
  
  for word in array {
    if wordsUsed.contains(word) {
      wordsUsed.append(word)
      duplicateWords.append(word)
      print(wordsUsed)
      print(duplicateWords)
    } else {
      wordsUsed.append(word)
    }
    print(word)
  }
  
  if duplicateWords.count > 0 {
    print(duplicateWords)
    return "Duplicate words detected!"
  } else {
    return "No duplicate words detected!"
  }
}

checkArrForDuplicates(array: newArr)
checkArrForDuplicates(array: duplicateArray)
checkArrForDuplicates(array: arr)
