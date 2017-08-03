//: Playground - noun: a place where people can play

import UIKit


//Below bad because re-writing, things could change
//This belongs below shape. Moved to make cleaner
//class Rectangle {
//    var area: Double?
//
//    func calculateArea(length: Double, width: Double) {
//        area = length * width
//    }
//}
//
//class Triangle {
//    var area: Double?
//
//    func getArea(baseValue: Double, height: Double) {
//        area = base * height) / 2
//    }
//}

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
    }
}

class Triangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        <#code#>area = valA * valB / 2eve
    }
}