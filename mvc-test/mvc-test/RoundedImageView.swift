//
//  RoundedImageView.swift
//  mvc-test
//
//  Created by Ryan Carty on 7/18/17.
//  Copyright © 2017 Ryan Carty. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    //Creates a style instead of manual coding
    //Now change class of the image
    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
