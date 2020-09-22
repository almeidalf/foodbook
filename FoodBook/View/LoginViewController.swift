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
        let em = txtFieldUsuario.text!
        let se = txtFieldSenha.text!
        login.realizarLogin(email: em, senha: se)
    }
    
    @IBAction func btnCadastrar(_ sender: Any) {
        
    }
}

