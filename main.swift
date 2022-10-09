
// Add your code below:

import Foundation
import Swift

var randomWords : [String] = []

// Read the contents of the specified file
do {
    //This do-catch program puts a txt file into an array and seperates it into multiple values
    let data = try String(contentsOfFile:"random-10e3b.txt", encoding: String.Encoding.utf8)
    randomWords = data.components(separatedBy: "\n")
    randomWords.removeLast()
} catch let err as NSError {
    // do something with Error
    print(err)

}

var sequence = 0
var wordCount = randomWords.count - 1
print(wordCount)
func Sorter(words : Array<String>, arrayCount: Int, wordCount: Int) -> Array<String> {
    var sortedWords = words
    var sequence2 = 0
    func checkSorted(words: Array<String>) -> Bool
    {
        var orderCheck = 0
        for x in 0...(wordCount-1)
        {
            if words[x] < words[x+1]
            {
                orderCheck += 1
            }
        }
        if orderCheck == wordCount-1
        {
            return true
    //        print(words)
        } else {
         //   print(orderCheck)
  //          print(wordCount)
            return false
        }

    }
    var y = 0
    while true {
        sequence2 = sequence + 1
        let word1 = sortedWords[sequence]
        let word2 = sortedWords[sequence2]
        if word1 > word2 {
            sortedWords.swapAt(sequence, sequence2)
            sequence += 1
        } else {
            sequence += 1
        }
        if sequence == wordCount{
            sequence = 0
            sequence2 = 0
            
        }
        
        if y >= 100 {
            y = 0
            if checkSorted(words:sortedWords)
            {
                break
            }
        }
        y += 1

    }
    return sortedWords
}
if wordCount > 1 {
   
    print(Sorter(words: randomWords, arrayCount:sequence, wordCount:wordCount)) 
} 
