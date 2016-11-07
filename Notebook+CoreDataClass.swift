//
//  Notebook+CoreDataClass.swift
//  CoolNotes
//
//  Created by Phillip Crawford on 11/6/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import Foundation
import CoreData


public class Notebook: NSManagedObject {

    convenience init(name: String, context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Notebook", in: context) {
            self.init(entity: ent, insertInto: context)
            self.name = name
            self.creationDate = NSDate()
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
}
