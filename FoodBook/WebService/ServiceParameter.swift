//
//  ServiceParameter.swift
//  FoodBook
//
//  Created by Reply on 04/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import Foundation

class ServicoParametro {
    static let urlAPI: String = "http://192.168.0.150:45455/api/";
    
    //Usuário
    static let SERVICE_CADASTRO: String      = urlAPI + "usuario";
    static let SERVICE_LOGIN: String      = urlAPI + "usuario/login";
    
    //Receitas
    static let SERVICE_BuscarTodasReceitas: String      = urlAPI + "receita";
    static let SERVICE_BuscarReceitaEspecifica: String      = urlAPI + "";
    static let SERVICE_CadastrarReceita: String      = urlAPI + "";
    static let SERVICE_AtualizarReceita: String      = urlAPI + "";
    static let SERVICE_DeletarReceita: String      = urlAPI + "";
}
