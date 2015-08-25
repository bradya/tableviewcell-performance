//
//  DrawRectCellView.swift
//  TablePerformance
//
//  Created by Brady Archambo on 6/13/14.
//  Copyright (c) 2014 Tiny Speck. All rights reserved.
//

import UIKit

class DrawRectCellView: UIView {
    
    var text: NSAttributedString?

    override init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        UIColor.whiteColor().setFill()
        CGContextFillRect(UIGraphicsGetCurrentContext(), rect)
        
        // Drawing code
        
        if let attributedText = text {
            attributedText.drawInRect(rect)
        }
    }

}
