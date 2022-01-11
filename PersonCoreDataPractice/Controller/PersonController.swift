//
//  PersonController.swift
//  PersonCoreDataPractice
//
//  Created by Justin Lowry on 12/20/21.
//

import Foundation
import CoreData

class PersonController {
    static let shared = PersonController()
    var person: [Person] {
        let request: NSFetchRequest<Person> = Person.fetchRequest()
        do {
            return try CoreDataStack.context.fetch(request)
        } catch {
            print("Error fetching entries \(error)")
            return []
        }
    }
    
    // MARK: - Methods
    // Crud
    // Create
    func add(person: Person) {
        saveToPersistentStorage()
    }
    
    func remove(person: Person) {
        if let moc = person.managedObjectContext {
            moc.delete(person)
        }
        saveToPersistentStorage()
    }
    
    // Persistence
    func saveToPersistentStorage() {
        do {
            try CoreDataStack.context.save()
        } catch let e {
            print("Error Encoding")
            print(e)
            print(e.localizedDescription)
        }
    }
}
