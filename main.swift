
    // ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

import Foundation
import Swift

var randomWords : [String] = []

// Read the contents of the specified file
do {
    //This do-catch program puts a txt file into an array and seperates it into multiple values
    let data = try String(contentsOfFile:"random.txt", encoding: String.Encoding.utf8)
    randomWords = data.components(separatedBy: "\n")
    randomWords.removeLast()
    print(randomWords[0])

} catch let err as NSError {
    // do something with Error
    print(err)

}

var sequence = 0
var wordCount = randomWords.count - 1
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
        if orderCheck == wordCount
        {
            return true
        } else {
            return false
        }

    }
    while true {
        sequence2 = sequence + 1
        var word1 : UInt8 = 1
        word1 = (sortedWords[sequence].first!).asciiValue!

        if word1 < 97 && word1 > 64 {
            word1 += 32
        }
        var word2 : UInt8 = 1
        word2 = (sortedWords[(sequence2)].first!).asciiValue!

        if word2 < 97 && word2 > 64 {
            word2 += 32
        }
        if word1 > word2 {
            sortedWords.swapAt(sequence, sequence2)
            sequence += 1
        } else {
            sequence += 1
        }
        print(word1)
        print(word2)
        print(sequence)
        if sequence == wordCount{
            sequence = 0
            sequence2 = 0
            print(sortedWords)
        }
        if checkSorted(words:sortedWords)
        {
            break
        }



    }
    return sortedWords
}
print(Sorter(words: randomWords, arrayCount:sequence, wordCount:wordCount))  
