//
//  HomeVM.swift
//  FoodBook
//
//  Created by Reply on 21/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation
import Alamofire


class HomeVM {
    
    func buscarTodasReceitas(){
        Alamofire.request(ServicoParametro.SERVICE_BuscarTodasReceitas,
                          method: .get,
                          encoding: JSONEncoding.default)
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
                    }catch{
                        print(error)
                    }
                }
            }
    }
    
    
}
