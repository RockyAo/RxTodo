//
//  TaskItem.swift
//  RxTodo
//
//  Created by Rocky on 2017/5/11.
//  Copyright © 2017年 Rocky. All rights reserved.
//

import Foundation
import RealmSwift
import RxDataSources

class TaskItem: Object {
    
    dynamic var uid:Int = 0
    
    dynamic var title:String = ""
    
    dynamic var addedTime:Date = Date()
    
    dynamic var checked:Date? = nil
    
    override class func primaryKey() -> String? {
        
        return "uid"
    }
    
}

extension TaskItem : IdentifiableType{

    var identity:Int{
    
        return self.isInvalidated ? 0 : uid
    }
    
}
