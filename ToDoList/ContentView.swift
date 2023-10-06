//
//  ContentView.swift
//  ToDoList
//
//  Created by Lily Burton on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todoTextFields: [String]
    
    @State private var todoTaskStates: [Bool]
        
        init() {
            _todoTextFields = State(initialValue: ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"])
            _todoTaskStates = State(initialValue: Array(repeating: false, count: 5))
        }
    
    var body: some View {
        VStack {
            Form {
                Image("TodoList")
                    .renderingMode(.original)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                Text("TodoList         ")
                    .font(.largeTitle)
                + Text("Toggle them all")
                Section(header: Text("Todo Checklist")) {
                    ForEach(0..<todoTextFields.count, id: \.self) { index in
                        HStack {
                            TextField(todoTextFields[index], text: $todoTextFields[index])
                            Toggle("", isOn: $todoTaskStates[index])
                        }
                    }

                    
                    if todoTaskStates.allSatisfy { $0 == true } {
                        Text("Good Job!")
                    }
                }
                .padding(5)
            }
        }
    }
}
            
      

//struct ContentView: View {
//    @State private var petName = ""
//
//    var body: some View {
//        Form {
//            TextField("Enter your pet's name", text: $petName)
//            Text("Hello, \(petName)!")
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
