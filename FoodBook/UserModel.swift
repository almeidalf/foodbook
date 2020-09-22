//
//  UserModel.swift
//  FoodBook
//
//  Created by Reply on 20/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation

class UserModel {
    
struct UsuarioLoginResponse: Decodable {
    var token: String
    var expiration: String
    var refreshToken: String
    var expirationRefreshToken: String
    
    init(_ token: String,_ expiration:String,_ refresh:String,_ expirationT:String) {
        self.token = token
        self.expiration = expiration
        self.refreshToken = refresh
        self.expirationRefreshToken = expirationT
    }
}

struct UsuarioCadastro: Decodable {
    var nome: String
    var email: String
    var senha: String
    
    init(_ nome: String,_ email:String,_ senha:String) {
        self.nome = nome
        self.email = email
        self.senha = senha
    }
}
}
