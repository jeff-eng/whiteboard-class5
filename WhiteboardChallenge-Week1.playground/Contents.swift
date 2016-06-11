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

