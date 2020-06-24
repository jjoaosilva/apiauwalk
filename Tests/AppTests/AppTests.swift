import App
import XCTest

@testable import App

var food = [
    Item(id: 1, name: "Mamadeira", description: "Ótima fonte de vitaminas.", price: 300, category: "1", image: "mamadeira"),
    Item(id: 2, name: "Osso", description: "Ótimo para os dentes do seu pet.", price: 600, category: "1", image: "osso"),
    Item(id: 3, name: "Ração", description: "Alimento mais completo.", price: 900, category: "1", image: "racao")
]

var shower = [
    Item(id: 4, name: "Sabonete", description: "Para uma limpeza mais simples.", price: 300, category: "2", image: "sabonete"),
    Item(id: 5, name: "Shampoo", description: "Ótimo para o pelo do seu pet", price: 600, category: "2", image: "shampoo"),
    Item(id: 6, name: "Hidratante", description: "Ótimo para a pele do seu pet.", price: 900, category: "2", image: "hidratante")
]

var health = [
    Item(id: 7, name: "Bolinha", description: "Brinque com seu pet.", price: 300, category: "3", image: "bolinha"),
    Item(id: 8, name: "Osso de brinquedo", description: "Otimo para ele brincar sozinho.", price: 600, category: "3", image: "osso de brinquedo")
]

var energy = [
    Item(id: 9, name: "Caminha", description: "Otimo para recarregar as energias.", price: 600, category: "4", image: "caminha")
]

var itensMock =  [
    Item(id: 1, name: "Mamadeira", description: "Ótima fonte de vitaminas.", price: 300, category: "1", image: "mamadeira"),
    Item(id: 2, name: "Osso", description: "Ótimo para os dentes do seu pet.", price: 600, category: "1", image: "osso"),
    Item(id: 3, name: "Ração", description: "Alimento mais completo.", price: 900, category: "1", image: "racao"),
    Item(id: 4, name: "Sabonete", description: "Para uma limpeza mais simples.", price: 300, category: "2", image: "sabonete"),
    Item(id: 5, name: "Shampoo", description: "Ótimo para o pelo do seu pet", price: 600, category: "2", image: "shampoo"),
    Item(id: 6, name: "Hidratante", description: "Ótimo para a pele do seu pet.", price: 900, category: "2", image: "hidratante"),
    Item(id: 7, name: "Bolinha", description: "Brinque com seu pet.", price: 300, category: "3", image: "bolinha"),
    Item(id: 8, name: "Osso de brinquedo", description: "Otimo para ele brincar sozinho.", price: 600, category: "3", image: "osso de brinquedo"),
    Item(id: 9, name: "Caminha", description: "Otimo para recarregar as energias.", price: 600, category: "4", image: "caminha")
]

final class AppTests: XCTestCase {
    func testNothing() throws {
        // Add your tests here
        XCTAssert(true)
    }

    static let allTests = [
        ("testNothing", testNothing)
    ]
    
    func test_retorna_items_por_categoria_food(){
        let output = Item.mockItens(category: Categories.food)
        
        XCTAssertEqual(output, food)
    }
    
    func test_retorna_items_por_categoria_shower(){
        let output = Item.mockItens(category: Categories.shower)
        
        XCTAssertEqual(output, shower)
    }
    
    func test_retorna_items_por_categoria_health(){
        let output = Item.mockItens(category: Categories.health)
        
        XCTAssertEqual(output, health)
    }
    
    func test_retorna_items_por_categoria_energy(){
        let output = Item.mockItens(category: Categories.energy)
        
        XCTAssertEqual(output, energy)
    }
    
    func test_retorna_all_items(){
        let output = Item.mockItens()
        
        XCTAssertEqual(output, itensMock)
    }
}
