//
//  Text.swift
//  TablePerformance
//
//  Created by Brady Archambo on 6/13/14.
//  Copyright (c) 2014 Tiny Speck. All rights reserved.
//

import UIKit

let TwoDimensionalArrayOfRandomStrings = Text.getTwoDimensionalArrayOfRandomStrings()

class Text {
    class func getTwoDimensionalArrayOfRandomStrings() -> Array<Array<NSAttributedString>> {
        var strings = Array<Array<NSAttributedString>>()
        
        for index in 1...10 {
            var section: Array<NSAttributedString> = Array<NSAttributedString>()
            
            for i in 1...10 {
                let attributes = [ NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 16.0)!, NSForegroundColorAttributeName: UIColor(red: 0.20, green: 0.20, blue: 0.20, alpha: 1.0)] as NSDictionary
                let string: NSAttributedString = NSAttributedString(string: Text.getRandomText(), attributes: attributes as [NSObject : AnyObject])
                
                section.append(string)
            }
            strings.append(section)
        }
        
        return strings
    }
    
    class func getRandomText() -> String {
        let baseString = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
        
        let components = baseString.componentsSeparatedByString(" ")
        
        var random: Int = abs(Int(rand()))
        
        let numComponents = components.count
        
        var text: String = ""
        
        for index in 1...numComponents {
            let randomNumber: Int = abs(Int(rand()))
            
            let componentIndex = randomNumber % components.count
            
            text = text + components[componentIndex]
        }
        
        return text
    }
    
    class func getHeightForString(string:NSAttributedString) -> CGFloat {
        let size = CGSizeMake(UIApplication.sharedApplication().keyWindow!.frame.size.width, 10000.0)
        return string.boundingRectWithSize(size, options: NSStringDrawingOptions.UsesLineFragmentOrigin, context: nil).size.height + 4.0
    }
}