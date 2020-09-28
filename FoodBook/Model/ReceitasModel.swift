//
//  ReceitasModel.swift
//  FoodBook
//
//  Created by Reply on 27/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation

struct ListaReceitas: Decodable {
    var receita: [Receita]
}

struct Receita: Decodable {
    var id: Int
    var titulo: String
    var descricao: String
    var ingredientes: [String]
    var modoPreparo: [String]
}
