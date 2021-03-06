//
//  InterfaceController.swift
//  Simple Coin Flip WatchKit Extension
//
//  Created by Seth Harper on 3/22/15.
//  Copyright (c) 2015 Seth Harper. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var coinImage: WKInterfaceImage!
    
    var isAnimating = false
    
    @IBAction func updateImage() {
        
        if (false == isAnimating)
        {
            setTitle("Catch!")
            
            coinImage.setImageNamed("coin")
            coinImage.startAnimating()
            isAnimating = true
        }
        else
        {
            setTitle("Flip!")
            coinImage.stopAnimating()
            isAnimating = false
            var rand = arc4random_uniform(2)
            
            var currentImage:String
            
            if rand == 0
            {
                currentImage = "coin1.png"
            }
            else
            {
                currentImage = "coin5.png"
            }
            
            coinImage.setImageNamed(currentImage)
        }

        
    
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
