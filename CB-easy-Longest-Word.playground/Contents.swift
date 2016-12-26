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

func LongestWordWithRegex(sen: String) -> String {
    
    let regexPattern = "[A-Za-z ]"
    var filteredString = ""
    
    do {
        let regex = try NSRegularExpression(pattern: regexPattern, options: [])
        let matches = regex.matches(in: str, options: [], range: NSRange(location: 0, length: str.characters.count))
        
        for match in matches {
            let charIndex = match.rangeAt(0).location
            filteredString += String(str[str.index(str.startIndex, offsetBy: charIndex)])
        }
    } catch let error as NSError {
        print(error.localizedDescription)
    }
    
    let words = filteredString.components(separatedBy: " ")
    
    var counter = 0
    var longest = ""
    
    for word in words {
        if word.characters.count > counter {
            longest = word
            counter = word.characters.count
        }
        
    }
    return longest
    
}

print(LongestWord(sen: str))            // playground
print(LongestWordWithRegex(sen: str))   // playground
