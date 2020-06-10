//
//  File.swift
//  
//
//  Created by Jose Joao Silva Nunes Alves on 10/06/20.
//

import Vapor

struct Item: Content {
    var name: String
    var description: String
    var price: Float
}
