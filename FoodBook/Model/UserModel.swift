//
//  UserModel.swift
//  FoodBook
//
//  Created by Reply on 20/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation

struct UsuarioLoginResponse: Decodable {
    var token: String
    var expiration: String
    var refreshToken: String
    var expirationRefreshToken: String
}

struct UsuarioCadastro {
    var nome: String
    var email: String
    var senha: String
    
    init(_ nome:String,_ email:String,_ senha:String) {
        self.nome = nome
        self.email = email
        self.senha = senha
    }
}


