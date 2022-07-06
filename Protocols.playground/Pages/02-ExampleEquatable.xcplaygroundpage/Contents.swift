import UIKit

var greeting = "Hello, playground"

struct Employee: Comparable, Equatable {
    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.age == rhs.age
    }
        
    
    let firstName: String
    let lastName: String
    let jobTitle: String
    let age: Int
}

let jackson = Employee(firstName: "Jackson", lastName: "Smith", jobTitle: "Professor", age: 28)
let tadeu = Employee(firstName: "Jackson", lastName: "Smith", jobTitle: "Professor", age: 52)

print(jackson < tadeu)
print(jackson == tadeu)
