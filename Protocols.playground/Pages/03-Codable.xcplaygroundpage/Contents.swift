//: [Previous](@previous)

import Foundation

let encoder = JSONEncoder()
let decoder = JSONDecoder()


let json = """
{
  "name" : "John Appleseed",
  "id" : 7,
  "favoriteToy" : {
    "name" : "Teddy Bear"
  }
}
"""

struct Toy: Codable {
    var name: String
}

public struct Employee: Codable {
  var name: String
  var id: Int
  var favoriteToy: Toy
}

print("First Example 🚀🚀🚀🚀")
print("\n")

let employee = Employee(name: "Jackson", id: 1, favoriteToy: Toy(name: "Luffy"))
let data = try encoder.encode(employee)
let string = String(data: data, encoding: .utf8)!
print(employee)
print(string)

print("\n")
print("----------------------")
print("Second Example 🚀🚀🚀🚀")
print("\n")


let sameEmployee = try decoder.decode(Employee.self, from: data)
print(sameEmployee.id)
print(sameEmployee.favoriteToy.name)
print(sameEmployee.name)
