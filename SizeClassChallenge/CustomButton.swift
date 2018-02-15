//
//  CustomButton.swift
//  SizeClassChallenge
//
//  Created by Eduardo Vital Alencar Cunha on 24/08/17.
//  Copyright © 2017 VCode. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
            self.clipsToBounds = true
        }
    }
}
