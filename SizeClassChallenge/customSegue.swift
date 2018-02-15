//
//  customSegue.swift
//  SizeClassChallenge
//
//  Created by Eduardo Vital Alencar Cunha on 26/08/17.
//  Copyright © 2017 VCode. All rights reserved.
//

import UIKit

class customSegue: UIStoryboardSegue {
    override func perform() {
        let sourceView = self.source.view!
        let destinationView = self.destination.view!

        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height

        destinationView.frame = CGRect(x: 0, y: screenHeight, width: screenWidth, height: screenHeight)

        let window = UIApplication.shared.keyWindow
        window?.insertSubview(destinationView, aboveSubview: sourceView)

        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            sourceView.frame = sourceView.frame.offsetBy(dx: 0.0, dy: -screenHeight)
            destinationView.frame = destinationView.frame.offsetBy(dx: 0, dy: -screenHeight)

        }) { (Finished) -> Void in
            self.source.present(self.destination, animated: false, completion: nil)
        }
    }
}
