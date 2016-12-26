// first longest word

import Foundation

var str = "Hello!!333, playg\nround ,,,,,,,,,,,,,,,,,,,,"

func LongestWord(sen: String) -> String {
    
    let lettersToKeep = CharacterSet.init()
        .union(CharacterSet.lowercaseLetters)
        .union(CharacterSet.uppercaseLetters)
        .union(CharacterSet.whitespaces)
    
    let sentence = sen
        .components(separatedBy: lettersToKeep.inverted)
        .joined(separator: "")
    
    let array = sentence.components(separatedBy: " ")
    var counter = 0
    var longest = ""
    
    for word in array {
        if word.characters.count > counter {
            longest = word
            counter = word.characters.count
        }
        
    }
    return longest
    
}

print(LongestWord(sen: str))    // playground
