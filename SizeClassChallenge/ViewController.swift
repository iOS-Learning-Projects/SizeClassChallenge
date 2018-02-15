//
//  ViewController.swift
//  SizeClassChallenge
//
//  Created by Eduardo Vital Alencar Cunha on 24/08/17.
//  Copyright © 2017 VCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    @IBAction func receiveInformation(segue: UIStoryboardSegue) {
        if let id = segue.source.restorationIdentifier {
            switch id {
            case "age":
                self.ageLabel.text = "Idade: " + ((segue.source as? askAgeViewController)?.ageLabel.text)!
            case "name":
                self.nameLabel.text = "Nome: " + ((segue.source as? askNameViewController)?.nameLabel.text)!
            default:
                print("Unknown Identifier")
            }
        }
    }
}

