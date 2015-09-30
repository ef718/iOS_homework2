//
//  MyTableViewController.swift
//  Boogie2
//
//  Created by Elaine Fang on 9/22/15.
//  Copyright © 2015 iOSBoogie. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    // Datasource
    
    let imageItems = ["agreement2.png", "arrow487.png", "auricular6.png", "black218.png", "books8.png", "calendar146.png", "calendar68.png", "call60.png", "camera3.png", "car189.png", "checked21.png", "clock96.png", "earth213.png", "email19.png", "email5.png", "facebook2.png", "facebook29.png", "facebook30.png", "facebook55.png", "facebook56.png", "favorite21.png", "gear39.png", "heart13.png", "heart298.png", "home168.png", "home4.png", "home78.png", "instagram12.png", "instagram16.png", "instagram19.png", "iphone26.png", "keyboard53.png", "magnifier13.png", "magnifying-glass32.png", "mail3.png", "mail59.png", "map-pointer2.png", "marketing8.png", "multiple25.png", "opened4.png", "payment7.png", "phone21.png", "phone325.png", "phone72.png", "pin56.png", "play43.png", "settings48.png", "smartphone86.png", "telephone46.png", "telephone5.png", "three115.png", "twitter.png", "twitter1.png", "user168.png", "users6.png", "users81.png", "verification5.png", "web58.png", "website17.png", "whatsapp.png", "wifi74.png", "world91.png"]
    
    var selectedIndexPath:NSIndexPath? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageItems.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! MyTableViewCell
        
        // Configure the cell...
        cell.textLabel?.text = imageItems[indexPath.row]

        cell.imageView?.image = UIImage(named: imageItems[indexPath.row])

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        if selectedIndexPath == indexPath {
             self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }

    }

}
