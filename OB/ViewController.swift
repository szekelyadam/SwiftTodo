//
//  ViewController.swift
//  OB
//
//  Created by Ádibádi on 28/11/15.
//  Copyright © 2015 Székely Ádám. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var toDoItems = [ToDoItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: "cell")
        
        if toDoItems.count > 0 {
            return
        }
        toDoItems.append(ToDoItem(text: "make toast"))
        toDoItems.append(ToDoItem(text: "make beer"))
        toDoItems.append(ToDoItem(text: "make love"))
        toDoItems.append(ToDoItem(text: "make iOS apps"))
        toDoItems.append(ToDoItem(text: "make peace"))
        
        tableView.separatorStyle = .None
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.rowHeight = 50.0
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        let item = toDoItems[indexPath.row]
        cell.textLabel?.text = item.text
        cell.selectionStyle = .None
        return cell
    }
    
//    func colorForIndex(index: Int) -> UIColor {
//        let itemCount = toDoItems.count - 1
//        let val = (CGFloat(index) / CGFloat(itemCount)) * 0.6
//        return UIColor(red: 1.0, green: val, blue: 0.0, alpha: 1.0)
//    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor(red: 200/255, green: 227/255, blue: 191/255, alpha: 1.0)
        cell.textLabel?.textColor = UIColor.whiteColor()
    }
}

