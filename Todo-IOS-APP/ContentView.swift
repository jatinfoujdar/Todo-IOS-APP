//
//  ContentView.swift
//  Todo-IOS-APP
//
//  Created by jatin foujdar on 30/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                  VStack {
                      // List of tasks (static UI)
                      List {
                          ForEach(0..<5) { index in
                              HStack {
                                  Text("Task \(index + 1)")
                                      .font(.body)
                                  Spacer()
                                  
                                  // Edit icon
                                  Button(action: {
                                      // Edit action (UI only)
                                  }) {
                                      Image(systemName: "pencil")
                                          .foregroundColor(.blue)
                                  }
                                  
                                  // Delete icon
                                  Button(action: {
                                      // Delete action (UI only)
                                  }) {
                                      Image(systemName: "trash")
                                          .foregroundColor(.red)
                                  }
                              }
                          }
                      }
                      .listStyle(PlainListStyle())
                      
                      // New task input section (static UI)
                      HStack {
                          TextField("New Task", text: .constant(""))
                              .textFieldStyle(RoundedBorderTextFieldStyle())
                              .padding()
                          
                          // Add button
                          Button(action: {
                              // Add action (UI only)
                          }) {
                              Image(systemName: "plus.circle.fill")
                                  .font(.title)
                                  .foregroundColor(.green)
                          }
                          .padding(.trailing)
                      }
                      .padding(.bottom)
                  }
                  .navigationBarTitle("To-Do List")
                  .navigationBarItems(trailing: EditButton())
              }
          }
      }

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
