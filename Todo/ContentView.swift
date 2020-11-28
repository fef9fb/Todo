//
//  ContentView.swift
//  Todo
//
//  Created by Lisa Ino on 2020/11/07.
//  Copyright © 2020 Lisa Ino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Todos.title, ascending: true)],
        animation: .default)
    var todos: FetchedResults<Todos>
    
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        NavigationView {

            List{
                ForEach(todos, id: \.self) { todo in
                    Text("\(todo.title!)")
                }.onDelete { indices in
                    self.todos.delete(at: indices, from: self.viewContext)
                }
            }
            .navigationBarTitle("Todo List", displayMode: .inline)
            .navigationBarItems(
                trailing:
                Button(action: {}) {
                    NavigationLink(destination: FormView()) {
                        Text("＋")
                    }
                }
            )
        }
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
