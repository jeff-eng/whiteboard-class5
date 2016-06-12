//Whiteboard Challenge Week 1 (Class 5)
import UIKit

//Whiteboard challenge #1: Given an array of strings, find and return all palindromes

func isPalindrome (phrase: [String]) -> [String] {
    var palindrome = [String]()
    for word in phrase {
        var reversedWord = String()
        for character in word.characters {
            reversedWord.insert(character, atIndex: reversedWord.startIndex)
        }
        if word == reversedWord {
            palindrome.append(word)
        }
    }
    return palindrome
}

let palindromeTestArray = ["mom", "hannah", "nope", "still no", "racecar"]
let palindromes = isPalindrome(palindromeTestArray)


//Whiteboard challenge #2: Implement base 16 conversion functions: Meaning convert from base 10 to base 16

var remainderConvert: [Int: String] = [
    10 : "A",
    11 : "B",
    12 : "C",
    13 : "D",
    14 : "E",
    15 : "F"
]

func baseSixteen(baseTen: Int) -> String {
    var result = String()
    var wholeDivisor = Int(baseTen/16)
    let remainder = baseTen % 16
    
    while wholeDivisor > 0 {
        let remainder = wholeDivisor % 16
        
        wholeDivisor = Int(wholeDivisor/16)
        if let converted = remainderConvert[remainder] {
            result.insert(Character(converted), atIndex: result.startIndex)
        } else {
            result.insert(Character("\(remainder)"), atIndex: result.startIndex)
        }
    }
    
    if let converted = remainderConvert[remainder] {
        result.append(Character(converted))
    } else {
        result.append(Character("\(remainder)"))
    }
    
    return result
}

let hex = String(10600, radix: 16)
baseSixteen(10600)
let testHex2 = String(500, radix: 16)
baseSixteen(500)
