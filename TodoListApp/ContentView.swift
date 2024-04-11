//
//  ContentView.swift
//  TodoListApp
//
//  Created by philip hanlon on 10/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var todos: [TodoItem] = [
        TodoItem(title: "Book a Tee time", isCompleted: false),
        TodoItem(title: "Remember golf is on TV at 18:00 onwards", isCompleted: false),
        TodoItem(title: "Message the guys during golf", isCompleted: false)
    ]

    var body: some View {
        NavigationView {
            VStack {
               Image("Chrome-tabs")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)

                Text("Golf things!")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                
                List {
                    ForEach(todos.indices, id: \.self) { index in
                        TodoItemView(todo: $todos[index])
                    }
                }
                .listStyle(PlainListStyle())
            }
            .padding()
            .navigationTitle("Todos")
        }
    }
}



