import SwiftUI

struct ContentView: View {
    @State private var todos: [Todo] = []
    @State private var newString = ""
    
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
                                    
                                  }) {
                                      Image(systemName: "pencil")
                                          .foregroundColor(.blue)
                                  }
                                  
                                  // Delete icon
                                  Button(action: {
                                  
                                  }) {
                                      Image(systemName: "trash")
                                          .foregroundColor(.red)
                                  }
                              }
                          }
                      }
                      .listStyle(PlainListStyle())
                      
                      
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
