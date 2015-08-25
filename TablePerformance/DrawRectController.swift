//
//  DrawRectController.swift
//  TablePerformance
//
//  Created by Brady Archambo on 6/13/14.
//  Copyright (c) 2014 Tiny Speck. All rights reserved.
//

import UIKit

class DrawRectController: UITableViewController {
    
    let ReuseIdentifier = "DrawRectIdentifier"
    
    override init(style: UITableViewStyle) {
        super.init(style: style)
        
        self.title = "Draw Rect"
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!)  {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init!(coder aDecoder: NSCoder!) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(DrawRectCell.self, forCellReuseIdentifier: ReuseIdentifier)
    }

    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // Return the number of sections.
        return TwoDimensionalArrayOfRandomStrings.count
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return TwoDimensionalArrayOfRandomStrings[section].count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : DrawRectCell = tableView.dequeueReusableCellWithIdentifier(ReuseIdentifier, forIndexPath: indexPath) as! DrawRectCell
        
        // Configure the cell...
        
        cell.setTextString(TwoDimensionalArrayOfRandomStrings[indexPath.section][indexPath.row])

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return Text.getHeightForString(TwoDimensionalArrayOfRandomStrings[indexPath.section][indexPath.row])
    }

}
