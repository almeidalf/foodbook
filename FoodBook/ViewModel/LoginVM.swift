//
//  LoginVM.swift
//  FoodBook
//
//  Created by Reply on 21/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation
import Alamofire
import UIKit

class LoginVM {
    var user = UserModel()
    
func realizarLogin(email:String, senha:String){
    Alamofire.request(ServicoParametro.SERVICE_LOGIN, method: .post, parameters: ["email":email,"senha":senha], encoding: JSONEncoding.default)
        .validate(statusCode: 200..<300)
        .responseData { response in
            switch response.result {
            case .failure(let error):
                print(error)
            case .success(let data):
                do{
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let result = try decoder.decode(UserModel.UsuarioLoginResponse.self, from: data)
                    print(result)
                }catch{
                    print(error)
                }
            }
        }
    }
}
