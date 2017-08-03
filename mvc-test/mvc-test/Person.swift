//
//  Person.swift
//  mvc-test
//
//  Created by Ryan Carty on 7/17/17.
//  Copyright © 2017 Ryan Carty. All rights reserved.
//

import Foundation

class Person {
    //Model layer for customizing, mess around, format data
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get {
            return _firstName
        } set {
            _firstName = newValue
        }
    }
    
    var lastName: String {
        return _lastName
    }
    
    init(first: String, last: String) {
        self._firstName = first
        self._lastName = last
    }
    
    //Where full name should live
    var fullName: String {
        return "\(_firstName) \(_lastName)"
    }
}
