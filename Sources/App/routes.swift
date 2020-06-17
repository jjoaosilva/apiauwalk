import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "I'm alive"
    }

    router.get("item") { req -> [Item] in
        guard let category = req.query[Categories.self, at: "category"] else {
            return Item.mockItens()
        }
        return Item.mockItens(category: category)
    }
}
