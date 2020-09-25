//
//  LoginViewController.swift
//  FoodBook
//
//  Created by Reply on 20/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginViewModel = LoginVM()
    
    @IBOutlet weak var txtFieldUsuario: UITextField!
    @IBOutlet weak var txtFieldSenha: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func btnLogin(_ sender: Any) {
        loginViewModel.enviarInformacoes(email: txtFieldUsuario.text!, senha: txtFieldSenha.text!)
    }
    
    @IBAction func btnCadastrar(_ sender: Any) {
        
    }
}

