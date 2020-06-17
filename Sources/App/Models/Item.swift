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
    var name : String
    var description : String
    var price : Int
    var category : String
    var image: String
    
    init (name : String, description: String, price: Int, category : String, image: String ) {
        self.name = name
        self.description = description
        self.price = price
        self.category = category
        self.image = image
    }
    
    static func mockItens(category: Categories = .all) -> [Item] {
        let itensMock = [
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
