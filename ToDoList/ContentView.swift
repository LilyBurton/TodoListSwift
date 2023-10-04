//
//  ContentView.swift
//  ToDoList
//
//  Created by Lily Burton on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todoTask = true
    @State private var todoTextFields: [String] = ["Todo 1", "Todo 2", "Todo 3", "Todo 4", "Todo 5"]
    
    var body: some View {
        VStack {
            Form {
                Image("TodoList")
                    .renderingMode(.original)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                Section(header: Text("Todo Checklist")) {
                    ForEach(0..<todoTextFields.count, id: \.self) { index in
                        HStack {
                            TextField(todoTextFields[index], text: $todoTextFields[index])
                            Toggle("", isOn: $todoTask)
                        }
                    }
                    
                    if todoTask {
                        Text("Good Job!")
                    }
                }
                .padding()
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
