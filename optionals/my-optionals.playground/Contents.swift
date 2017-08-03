//: Playground - noun: a place where people can play

import UIKit

//LESSON NOTES
//If you don't know if there will be a value use ?
//If you are POSITIVE it will be filled, you can use !, but be careful
//Don't need either if you initialize in constructor
//You can use? on optionals to perform regular commands (cars?.append) if its not nil go ahead and run it, but if it is we're not gonna do anything. Should only use when you don't care what happens as opposed to adding a value to it

// May or may not have a value at some point
var lotteryWinnings: Int?

// DO NOT DO THIS explicitly unwrapping value->crash
//print(lotteryWinnings!)

//! Okay here b/c will only print if there is a value
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

//If value of lW exists, store new value and print; this is better way than above
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {print(m) {
//        print (m)
//    }
//}

print(vehicle?.model)

vehicle = Car()
vehicle?.model = "Bronco"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

if let carArr = cars , carArr.count > 0 {
    //only execute if not nil and if more than 0 elements
} else {
    cars?.append(Car())
    print(cars?.count)
}


class Person {
    var _age: Int!
    //If you're going to use an implicitly unwrapped variable, you have to initialize it or it could crash; shouldn't do it
    //Better to set to a value to avoid crashing (0)
    
    var age: Int { //data hider; creating computed property
        if _age == nil {
            _age = 15
        }
        
        return _age
    }
    
    func setAge(newAge: INt) {
        self.age = newAge
    }
}

var jack = Person()
print(jack._age
print(jack.age)

class Dog {
    var species: String
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

//Initialized in the constructor (don't need !)
var lab = Dog(someSpecies: "Black Lab")
print(lab.species)