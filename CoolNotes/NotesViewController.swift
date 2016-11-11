//
//  NotesViewController.swift
//  CoolNotes
//
//  Created by Phillip Crawford on 11/10/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import UIKit

// MARK: - NotesViewController: CoreDataTableViewController

class NotesViewController: CoreDataTableViewController {
    
    // MARK: TableView Data Source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get the note
        let note = fetchedResultsController?.object(at: indexPath) as! Note
        
        // Get the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Note", for: indexPath)
        
        // Sync note -> cell
        cell.textLabel?.text = note.text
        
        // Return the cell
        return cell
    }
    
    @IBAction func addNewNote(_ sender: AnyObject) {
        
        let n = Note(text: "A new note", context: self.fetchedResultsController!.managedObjectContext)
        print("Created a new note: \(n)")
 
    }
    // MARK: Navigation
    
    /*
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
