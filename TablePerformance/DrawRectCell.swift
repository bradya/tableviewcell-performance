//
//  DrawRectCell.swift
//  TablePerformance
//
//  Created by Brady Archambo on 6/13/14.
//  Copyright (c) 2014 Tiny Speck. All rights reserved.
//

import UIKit

class DrawRectCell: UITableViewCell {
    
    var cellView: DrawRectCellView?

    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
        cellView = DrawRectCellView(frame: self.frame)
        
        if let cell = cellView {
            cell.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
            cell.contentMode = UIViewContentMode.Redraw
        }
        
        self.contentView.addSubview(cellView)
    }
    
    func setText(text: NSAttributedString) {
        if let view = cellView {
            view.text = text
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
