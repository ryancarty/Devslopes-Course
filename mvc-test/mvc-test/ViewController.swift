//
//  ViewController.swift
//  mvc-test
//
//  Created by Ryan Carty on 7/17/17.
//  Copyright © 2017 Ryan Carty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var renameField: UITextField!
    @IBOutlet weak var fullName: UILabel!
    /* Not needed (used in corner radius ex. below)
    @IBOutlet weak var ryanImage: UIImageView! */
    
    let person = Person(first: "John", last: "Hancock") //Moved from inside viewDidLoad to make it a global constant
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fullName.text = person.fullName
        
        /* CREATING FULL NAME
        -New programmers do:
        fullName.text = "\(person.firstName) \(person.lastName)"
        • Wrote model layer logic in view controller. Manipulated data to show it in the view
        • Don't want to do any of that in the view controller */
 
        /* ROUNDING IMAGE EDGES
        -New programmers do:
        ryanImage.layer.cornerRadius = 5.0
        ryanImage.clipsToBounds = true
        • Not reusable, not testable, lots of re-writing
        • Instead create and use a cocoa file like the RoundedImageView we made */
        
        /* NOTES
        • Dont manipulate DATA or VIEWS from here
        • Should only Grab IB outlets and put data into them and pass data back and forth
        • Don't modify customized appearance to viewer should be in custom should be in custom view clases in the view folder/layer */
    }
    @IBAction func renamePressed(_ sender: Any) {
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
    }
}
