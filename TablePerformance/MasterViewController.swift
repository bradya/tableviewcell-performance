//
//  MasterViewController.swift
//  TablePerformance
//
//  Created by Brady Archambo on 6/13/14.
//  Copyright (c) 2014 Tiny Speck. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var objects = NSMutableArray()


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // #pragma mark - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.row == 0 {
            cell.textLabel.text = "Draw Rect"
        }
        else if indexPath.row == 1 {
            cell.textLabel.text = "Text Views"
        }
        
        return cell
    }

    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)  {
        var controller: UIViewController?
        
        switch indexPath.row {
        case 0:
            controller = DrawRectController(style: UITableViewStyle.Plain)
        case 1:
            controller = TextViewController(style: UITableViewStyle.Plain)
        default:
            break
        }
        
        if let viewController = controller {
            self.navigationController.pushViewController(viewController, animated: true)
        }
    }
}

