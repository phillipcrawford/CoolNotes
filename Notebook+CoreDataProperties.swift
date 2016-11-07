//
//  Notebook+CoreDataProperties.swift
//  CoolNotes
//
//  Created by Phillip Crawford on 11/6/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import Foundation
import CoreData

extension Notebook {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notebook> {
        return NSFetchRequest<Notebook>(entityName: "Notebook");
    }

    @NSManaged public var creationDate: NSDate?
    @NSManaged public var name: String?
    @NSManaged public var notes: Note?

}
