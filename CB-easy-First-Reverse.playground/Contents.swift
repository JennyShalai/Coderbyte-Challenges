// reverse string

func FirstReverse(str: String) -> String {
    var result = ""
    let array = Array(str.characters)
    for element in array {
        result = String(element) + result
        
    }
    return result
    
}

print(FirstReverse(str: "Hello!"))  // !olleH