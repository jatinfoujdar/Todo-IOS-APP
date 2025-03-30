import Foundation


class TodoManager: ObservableObject{
    
    @Published var todos : [Todo] = []
    
    func addTodo(_ title: String){
        if !title.isEmpty{
            let newTodos = Todo(title: title)
            todos.append(newTodos)
        }
        
    }
}
