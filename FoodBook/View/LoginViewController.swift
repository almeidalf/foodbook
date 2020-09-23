//
//  LoginViewController.swift
//  FoodBook
//
//  Created by Reply on 20/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var login = LoginVM()
    
    @IBOutlet weak var txtFieldUsuario: UITextField!
    @IBOutlet weak var txtFieldSenha: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnLogin(_ sender: Any) {
        let email = txtFieldUsuario.text!
        let senha = txtFieldSenha.text!
        if(email != "" && senha != ""){
            login.realizarLogin(email: email, senha: senha)
        }else{
            print("EXISTE ALGO DE ERRADO")
        }
    }
    
    @IBAction func btnCadastrar(_ sender: Any) {
        
    }
}

