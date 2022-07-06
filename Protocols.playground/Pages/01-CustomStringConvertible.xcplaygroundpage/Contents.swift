import UIKit

let string = "Hello, playground"
print(string)

let number = 42
print(number)

let boolean = false
print(boolean)

class Shoe: CustomStringConvertible {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String {
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
print(myShoe)


