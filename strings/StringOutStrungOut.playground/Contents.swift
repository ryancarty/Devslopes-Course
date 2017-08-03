//: Playground - noun: a place where people can play

import UIKit

//Type inference-
    var str = "Hello, playground" //Type inference; recommended way
    //str = 50 //Can't do because of variable type
    //var str: String = "Hello, playground" //Explicitly declared type

var firstName = "Jack"
var lastName = "Bauer"

var age = 45
var fullName = firstName + " " + lastName //String concatanation
var fullName2 = "\(firstName) \(lastName) is \(age)" //String interpolation (pass variables right into your string

fullName.append(" III")

var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized //Capitilized is a peroperty/variable so no ()

var chatroomAnnoyingCapsGuy = "PLEASE HELP ME NOW! HER EIS MY 100 LINES OF CODE"

var lowercasedChat = chatroomAnnoyingCapsGuy.lowercased() //This is a function so needs ()

//Oh my Heck, Fetch

var sentence = "What the fetch?! Heck that is crazy"

if sentence.contains("fetch") || sentence.contains("Heck"){
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}