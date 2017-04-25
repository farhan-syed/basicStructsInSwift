//: Playground - noun: a place where people can play

import Foundation

// Basic syntax of a struct

struct Name {
    // properties here
}

// Let's use an example where you have a User struct, it's properties are username, email, and name.

struct User {
    var username: String
    var email: String
    var name: String
}

// We can now create an instance of a struct. 

// If you notice the compiler will provide us with parameters to fill of each property.

var user = User(username: "farhansyed", email: "farhansyed123@gmail.com", name: "Farhan Syed")

// To read a propery you simply 

print(user.username)

// It's important to know the difference between value & reference types

// Structs are value type, meaning it's value is copied when assigned or passed.

// Example:

var user2 = User(username: "farhan", email: "someEmail@gmail.com", name: "Farhan")

var user3 = user2

user2.username = "FarhanSyed"

print("user2 username is unchanged: \(user2.username)")
print("user3 username: \(user3.username)")

// Notice when printed the original, user2 is unchanged as a value type.

// If you don't understand my example, here's Apples.

// Value type example
struct S { var data: Int = -1 }
var a = S()
var b = a	 // a is copied to b
a.data = 42	// Changes a, not b
print("\(a.data), \(b.data)")	// prints "42, -1"

// Functions

// You can even add functions inside structs

struct Person {
    var firstName: String
    var lastName: String
    
    func printName() {
        print("\(self.firstName) \(self.lastName)")
    }
}

var person = Person(firstName: "Farhan", lastName: "Syed")

// Let's call printName()

person.printName()


