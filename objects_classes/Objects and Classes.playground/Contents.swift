//: Playground - noun: a place where people can play

import UIKit

//LESSON NOTES
//Class can have properties and functions

class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        //accelerte the vehicle
    }
    
    func brake() {
        
    }
}

let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

//Object has reference in memory, cannot copy an object
//Pass by reference (reference objects)
passByReference(vehicle: ford)

print(ford.model)

var someonesAge = 20

func passByValue(age: Int) { //Pass by value
    let newAge = age
}

passByValue(age: someonesAge)