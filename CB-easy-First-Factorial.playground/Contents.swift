// calculate power of a factorial

func FirstFactorial(num: Int) -> Int {
    var counter = num
    var result = 1
    
    while counter > 0 {
        result *= counter
        counter -= 1
    }
    // Note: feel free to modify the return type of this function
    return result
    
}

print(FirstFactorial(num: 8))   // 40320 = 8*7*6*5*4*3*2*1

