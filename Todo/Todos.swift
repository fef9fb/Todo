//
//  ToDo.swift
//  Todo
//
//  Created by Lisa Ino on 2020/11/17.
//  Copyright © 2020 Lisa Ino. All rights reserved.
//

import CoreData

extension Todos {
    static func create(in managedObjectContext: NSManagedObjectContext, title: String = "") {
        let newTodos = self.init(context: managedObjectContext)
        newTodos.title = title
        newTodos.timestamp = Date()
        
        do {
            try managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}

extension Collection where Element == Todos, Index == Int {
    func delete(at indices: IndexSet,
                from managedObjectContext: NSManagedObjectContext) {
        indices.forEach { managedObjectContext.delete(self[$0]) }
        
        do {
            try managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
