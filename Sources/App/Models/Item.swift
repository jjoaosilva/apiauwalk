//
//  File.swift
//  
//
//  Created by Jose Joao Silva Nunes Alves on 10/06/20.
//

import Vapor

enum Categories: Int, Decodable {
    case food = 1
    case shower = 2
    case health = 3
    case energy = 4
    case all = 5
}

struct Item: Content, Equatable {
    var id : Int
    var name : String
    var description : String
    var price : Int
    var category : String
    var image: String
    
    init (id : Int, name : String, description: String, price: Int, category : String, image: String ) {
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        self.category = category
        self.image = image
    }
    
    static func mockItens(category: Categories = .all) -> [Item] {
        let itensMock = [
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
        
        switch category {
        case .food:
            return itensMock.filter{ $0.category == "1" }
        case .shower:
            return itensMock.filter{ $0.category == "2" }
        case .health:
            return itensMock.filter{ $0.category == "3" }
        case .energy:
            return itensMock.filter{ $0.category == "4" }   
        default:
            return itensMock
        }
    }
}
