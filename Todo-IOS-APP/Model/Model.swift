import Foundation


struct Todo: Codable, Identifiable{
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
    var notes: String = ""
    var dueDate: Date = Date()
    
}
