//
//  Note+CoreDataClass.swift
//  CoolNotes
//
//  Created by Phillip Crawford on 11/6/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import Foundation
import CoreData


public class Note: NSManagedObject {

    convenience init(text:String = "New Note", context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Note", in: context) {
            self.init(entity: ent, insertInto: context)
            self.text = text
            self.creationDate = NSDate()
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    var humanReadableAge : String{
        get{
            let fmt = DateFormatter()
            fmt.timeStyle = .NoStyle
            fmt.dateStyle = .ShortStyle
            fmt.doesRelativeDateFormatting = true
            fmt.locale = NSLocale.current
        }
    }
}
