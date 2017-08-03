//: Playground - noun: a place where people can play

import UIKit

// Array: Ordered list of items, multiple values of same type (index 1 and 5 can have same value
// Set: Has unique items, not ordered
// Dictionary: Keys and values; Keys unique, values not; not ordered; complex and efficient algorithms that help you retrieve and fetch items; if you have a million items, it doesn't go through all of them

// Give a number a visual type
var namesOfIntegers = [Int: String]()
// 3 not an array, just name of key, could be a string
namesOfIntegers[3] = "three"
namesOfIntegers[44] = "forty four"

namesOfIntegers = [:] //Clears your dictionary out

// Keyname, colon, value, comma; explicitly declared types
var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print("The airports dictionary has: \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["DEV"] = "Devslopes International"
airports["DEV"] = nil

//For in loop, giving us a TUPLE, a data construct with one or more elements in it
//Could also say for (key, val) ...
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys {
    print("Key: \(key)")
}

for val in airports.values {
    print("Value: \(val)")
}

