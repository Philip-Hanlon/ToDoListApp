//
//  TodoItemView.swift
//  TodoListApp
//
//  Created by philip hanlon on 10/04/2024.
//

import SwiftUI

struct TodoItemView: View {
    @Binding var todo: TodoItem

    var body: some View {
        HStack {
            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(todo.isCompleted ? .green : .gray)

            TextField("Enter todo", text: $todo.title)
                .font(.headline)

            Spacer()

            Toggle("", isOn: $todo.isCompleted)
                .labelsHidden()
        }
        .padding(.vertical, 8)
    }
}

struct TodoItemView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemView(todo: .constant(TodoItem(title: "Test", isCompleted: false)))
    }
}

