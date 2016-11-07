//
//  Note+CoreDataProperties.swift
//  CoolNotes
//
//  Created by Phillip Crawford on 11/6/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import Foundation
import CoreData

extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note");
    }

    @NSManaged public var creationDate: NSDate?
    @NSManaged public var text: String?
    @NSManaged public var notebook: Notebook?

}
