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
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Todoを入力してください", text: $title)
                Text("\(title)")
            }
        }
    }
}
