import App
import XCTest

@testable import App

var food = [
    Item(name: "Mamadeira", description: "Ótima fonte de vitaminas.", price: 300, category: "1", image: "mamadeira"),
    Item(name: "Osso", description: "Ótimo para os dentes do seu pet.", price: 250, category: "1", image: "osso"),
    Item(name: "Ração", description: "Alimento mais completo.", price: 500, category: "1", image: "racao")
]

var shower = [
    Item(name: "Sabonete", description: "Para uma limpeza mais simples.", price: 300, category: "2", image: "sabonete"),
    Item(name: "Shampoo", description: "Ótimo para o pelo do seu pet", price: 500, category: "2", image: "shampoo"),
    Item(name: "Hidratante", description: "Ótimo para a pele do seu pet.", price: 700, category: "2", image: "hidratante")
]

var health = [
    Item(name: "Bolinha", description: "Brinque com seu pet.", price: 300, category: "3", image: "bolinha"),
    Item(name: "Osso de brinquedo", description: "Otimo para ele brincar sozinho.", price: 600, category: "3", image: "osso de brinquedo")
]

var energy = [
    Item(name: "Caminha", description: "Otimo para recarregar as energias.", price: 500, category: "4", image: "caminha")
]

var itensMock = [
    Item(name: "Mamadeira", description: "Ótima fonte de vitaminas.", price: 300, category: "1", image: "mamadeira"),
    Item(name: "Osso", description: "Ótimo para os dentes do seu pet.", price: 250, category: "1", image: "osso"),
    Item(name: "Ração", description: "Alimento mais completo.", price: 500, category: "1", image: "racao"),
    Item(name: "Sabonete", description: "Para uma limpeza mais simples.", price: 300, category: "2", image: "sabonete"),
    Item(name: "Shampoo", description: "Ótimo para o pelo do seu pet", price: 500, category: "2", image: "shampoo"),
    Item(name: "Hidratante", description: "Ótimo para a pele do seu pet.", price: 700, category: "2", image: "hidratante"),
    Item(name: "Bolinha", description: "Brinque com seu pet.", price: 300, category: "3", image: "bolinha"),
    Item(name: "Osso de brinquedo", description: "Otimo para ele brincar sozinho.", price: 600, category: "3", image: "osso de brinquedo"),
    Item(name: "Caminha", description: "Otimo para recarregar as energias.", price: 500, category: "4", image: "caminha")
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
