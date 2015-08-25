//
//  TextViewCell.swift
//  TablePerformance
//
//  Created by Brady Archambo on 6/13/14.
//  Copyright (c) 2014 Tiny Speck. All rights reserved.
//

import UIKit

class TextViewCell: UITableViewCell {
    
    @IBOutlet var textView: UITextView?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        textView!.scrollEnabled = false
        textView!.textContainer.lineFragmentPadding = 0
        textView!.textContainerInset = UIEdgeInsetsZero;
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTextString(text: NSAttributedString) {
        textView!.attributedText = text
    }
    
}
