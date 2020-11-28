//
//  FormView.swift
//  Todo
//
//  Created by Lisa Ino on 2020/11/10.
//  Copyright © 2020 Lisa Ino. All rights reserved.
//

import SwiftUI

struct FormView: View {
    @State var title = ""
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Todo")) {
                    TextField("Todoを入力してください", text: $title)
                }
                Section {
                    Button(action: {
                        self.save()
                    }) {
                        Text("登録")
                    }
                }
                
                
            }
        }
    }
    
    private func save() {
        Todos.create(in: self.viewContext,
                     title: title
        )
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
