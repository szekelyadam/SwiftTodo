//
//  ToDoItem.swift
//  OB
//
//  Created by Ádibádi on 28/11/15.
//  Copyright © 2015 Székely Ádám. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    // A text description of this item
    var text: String
    
    // This boolean shows whether the task is completed
    var completed: Bool
    
    // Initialize the todo item with the given string, and default uncompleted
    init(text: String) {
        self.text = text
        self.completed = false
    }
}
