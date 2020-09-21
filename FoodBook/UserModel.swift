//
//  UserModel.swift
//  FoodBook
//
//  Created by Reply on 20/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation
import ObjectMapper

class UserModel: Mappable{
    
    var usuario: String?
    var senha: String?
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    func mapping(map: Map) {
        usuario <- map["usuario"]
        senha <- map["senha"]
        
    }
}
