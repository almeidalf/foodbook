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

class LoginVM  {
    
    let defaults = UserDefaults.standard
    
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
                        let result = try decoder.decode(UsuarioLoginResponse.self, from: data)
                        self.guardarInfoUsuario(valor: result)
                    }catch{
                        print(error)
                    }
                }
            }
    }
    
    func enviarInformacoes(email: String, senha: String) {
        if(email != "" && senha != ""){
            realizarLogin(email: email, senha: senha)
        }else{
            print("Ocorreu um erro inesperado na passagem de dados")
        }
    }
    
    
    func guardarInfoUsuario(valor:UsuarioLoginResponse){
        let token = valor.token
        let expiration = valor.expiration
        
        //        defaults.set(token, forKey: Keys.USER_TOKEN)
        //        defaults.set(expiration, forKey: Keys.DATE_TOKEN)
    }
}
