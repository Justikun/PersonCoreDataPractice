//
//  Person+Convenience.swift
//  PersonCoreDataPractice
//
//  Created by Justin Lowry on 12/20/21.
//

import Foundation
import CoreData

extension Person {
    convenience init(name: String, context: NSManagedObjectContext = CoreDataStack.context) {
    
        self.init(context: context)
        self.name = name
    }
}
