import Fluent
import Vapor

final class Todo: Model, Content {
    static let schema = "todos"
    
    struct FieldKeys {
        static let title = "title"
        static let completed = "completed"
    }
    
    @ID(key: .id) var id: UUID?
    @Field(key: FieldKeys.title) var title: String
    @Field(key: FieldKeys.completed) var completed: Bool

    init() { }

    init(id: UUID? = nil, title: String, completed: Bool) {
        self.id = id
        self.title = title
        self.completed = completed
    }
}
