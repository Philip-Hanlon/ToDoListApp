//
//  DetailedView.swift
//  TodoListApp
//
//  Created by philip hanlon on 10/04/2024.
//

// DetailedView.swift

import SwiftUI

struct DetailedView: View {
    var todo: TodoItem
    
    var body: some View {
        VStack {
            Text(todo.title)
                .font(.title)
                .padding()
            
            Spacer()
        }
        .navigationTitle("ToDo Detail")
    }
}
