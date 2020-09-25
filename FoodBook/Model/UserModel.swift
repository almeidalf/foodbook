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

struct UsuarioCadastro: Decodable {
    var nome: String
    var email: String
    var senha: String
}


