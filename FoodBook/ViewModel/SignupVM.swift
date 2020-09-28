//
//  SignupVM.swift
//  FoodBook
//
//  Created by Reply on 26/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation
import Alamofire

class SignupVM {
    
    
    private func realizarCadastro(dados:UsuarioCadastro) {
        Alamofire.request(ServicoParametro.SERVICE_CADASTRO,
                          method: .post,
                          parameters: ["nome":dados.nome,
                                       "email":dados.email,
                                       "senha":dados.senha,
                                       "confirmacaosenha":dados.senha],
                          encoding: JSONEncoding.default)
            .validate(statusCode: 200..<300)
            .responseData { response in
                switch response.result {
                case .failure(let error):
                    print(error)
                case .success(let data):
                    do{
                        print("SUCESSO CADASTROU USUÁRIO!")
                    }catch{
                        print(error)
                    }
                }
            }
    }
    
    
    
    
    func enviarDados(info:UsuarioCadastro){
        realizarCadastro(dados: info)
    }
}
