//
//  ContentView.swift
//  Todo
//
//  Created by Lisa Ino on 2020/11/07.
//  Copyright © 2020 Lisa Ino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var message = "Navi"
    
    var body: some View {
        NavigationView {

            List{
                ForEach(3..<7) { i in
                    Text("リスト \(i)")
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
