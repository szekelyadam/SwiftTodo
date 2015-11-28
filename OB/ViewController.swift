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
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        if toDoItems.count > 0 {
            return
        }
        toDoItems.append(ToDoItem(text: "make toast"))
        toDoItems.append(ToDoItem(text: "make beer"))
        toDoItems.append(ToDoItem(text: "make love"))
        toDoItems.append(ToDoItem(text: "make iOS apps"))
        toDoItems.append(ToDoItem(text: "make peace"))
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        let item = toDoItems[indexPath.row]
        cell.textLabel?.text = item.text
        return cell
    }
}

