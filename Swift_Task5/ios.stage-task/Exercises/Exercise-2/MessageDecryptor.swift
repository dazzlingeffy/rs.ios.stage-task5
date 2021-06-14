import UIKit

class MessageDecryptor: NSObject {
    
    func decryptMessage(_ message: String) -> String {
        var result = ""
        var number = 0
        var wasNum = false
        for char in message {
            if char.isLetter {
                result += String(char)
            } else if char.isNumber {
                wasNum = true
                if wasNum {
                    number *= 10
                }
                number += Int(String(char))!
            } else if char == "[" {
                wasNum = false
                while number > 0 {
                    number -= 1
                }
            }
        }
        return result
    }
}
